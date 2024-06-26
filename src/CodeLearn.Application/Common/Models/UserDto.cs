﻿namespace CodeLearn.Application.Common.Models;

public class UserDto
{
    public string Id { get; set; } = null!;

    public string UserName { get; set; } = null!;

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public string? Patronymic { get; set; }

    public string? WindowsAccountName { get; set; }

    public string? StudentGroupName { get; set; }

    public string? UserCode { get; set; }

    public string TemporaryPassword { get; set; } = null!;
}