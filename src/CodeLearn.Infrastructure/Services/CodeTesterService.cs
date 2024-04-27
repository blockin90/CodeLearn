﻿using CodeLearn.Application.Common.Interfaces;
using CodeLearn.CodeEngine.Interfaces;
using CodeLearn.CodeEngine.Models;
using CodeLearn.Domain.Common.Result;
using CodeLearn.Domain.Exercises;

namespace CodeLearn.Infrastructure.Services;

public class CodeTesterService : ICodeTesterService
{
    private readonly ICodeFormatter _formatter;
    private readonly ICodeCompiler _compiler;
    private readonly ICodeTester _tester;

    public CodeTesterService(ICodeFormatter formatter, ICodeCompiler compiler, ICodeTester tester)
    {
        _formatter = formatter;
        _compiler = compiler;
        _tester = tester;
    }

    public async Task<Result> TestMethodAsync(MethodCodingExercise methodCodingExercise, string studentCode)
    {
        var exercise = ConvertToExercise(methodCodingExercise, studentCode);

        var formattedCode = _formatter.Format(exercise.StudentCode, exercise.ClassName);

        var compilationResult = _compiler.Compile(formattedCode!);

        if (compilationResult.IsFailure)
        {
            return compilationResult;
        }

        var testingResult = _tester.Test(exercise);

        return testingResult;
    }

    private static CodeExercise ConvertToExercise(MethodCodingExercise exercise, string studentCode)
    {
        var mappedExercise = new CodeExercise()
        {
            ClassName = "MethodCodingClass",
            MethodToExecute = exercise.MethodToExecute,
            MethodReturnTypeSystemName = exercise.MethodReturnDataType.SystemName,
            StudentCode = studentCode,
        };

        foreach (var parameter in exercise.MethodParameters)
        {
            mappedExercise.MethodParameters.Add(new MethodParameter()
            {
                Position = parameter.Position,
                SystemName = parameter.DataType.SystemName,
            });
        }

        foreach (var testCase in exercise.TestCases)
        {
            var mappedTestCase = new TestCase()
            {
                CorrectOutputValue = testCase.CorrectOutputValue,
                TestCaseParameters = [],
            };

            foreach (var parameter in testCase.TestCaseParameters)
            {
                mappedTestCase.TestCaseParameters.Add(new TestCaseParameter()
                {
                    Position = parameter.Position,
                    Value = parameter.Value
                });
            }

            mappedExercise.TestCases.Add(mappedTestCase);
        }

        return mappedExercise;
    }
}