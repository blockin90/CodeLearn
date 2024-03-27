﻿using CodeLearn.Application.Testings.Commands.CreateTesting;
using CodeLearn.Application.Testings.Queries.GetAllTestings;
using CodeLearn.Contracts.Testings;

namespace CodeLearn.Api.Controllers;

public sealed class TestingsController(ISender _sender, IMapper _mapper) : ApiControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(TestingResponseCollection), StatusCodes.Status200OK)]
    public async Task<IActionResult> GetAll()
    {
        var response = await _sender.Send(new GetAllTestingsQuery());
        var mappedData = response.Select(_mapper.Map<TestingResponse>).ToArray();

        return Ok(new TestingResponseCollection(mappedData));
    }

    [HttpPost]
    [ProducesResponseType(typeof(int), StatusCodes.Status201Created)]
    [ProducesResponseType(StatusCodes.Status400BadRequest)]
    [ProducesResponseType(StatusCodes.Status404NotFound)]
    public async Task<IActionResult> Create(TestingRequest request)
    {
        var command = _mapper.Map<CreateTestingCommand>(request);
        var result = await _sender.Send(command);

        return result.Match(
            id => CreatedAtAction(nameof(Create), new { id }, id),
            _ => Problem(statusCode: StatusCodes.Status400BadRequest, title: "Validation failed."),
            _ => Problem(statusCode: StatusCodes.Status404NotFound, title: "Test or Student group not found."));
    }
}