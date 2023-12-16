﻿namespace CodeLearn.Domain.Exercises;

public sealed class MethodCodingExercise : Exercise
{
    public string MethodToExecute { get; private set; }
    public string MethodSolutionCode { get; private set; }
    public DataTypeId MethodReturnTypeId { get; private set; } = null!;
    public DataType MethodReturnType { get; private set; } = null!;

    private readonly IList<MethodParameter> _methodParameters = [];
    public IReadOnlyList<MethodParameter> MethodParameters => _methodParameters.AsReadOnly();

    private readonly IList<TestCase> _testCases = [];
    public IReadOnlyList<TestCase> TestCases => _testCases.AsReadOnly();

    private MethodCodingExercise(
        ExerciseId id,
        TestingId testingId,
        string title,
        string description,
        ExerciseDifficulty difficulty,
        string methodToExecute,
        string methodSolutionCode)
        : base(id, testingId, title, description, difficulty)
    {
        MethodToExecute = methodToExecute;
        MethodSolutionCode = methodSolutionCode;
    }

    public static MethodCodingExercise Create(
        TestingId testingId,
        string title,
        string description,
        ExerciseDifficulty difficulty,
        string methodToExecute,
        string methodSolutionCode,
        DataType dataType)
    {
        var exercise = new MethodCodingExercise(
           ExerciseId.CreateUnique(),
           testingId,
           title,
           description,
           difficulty,
           methodToExecute,
           methodSolutionCode)
        {
            MethodReturnType = dataType,
            MethodReturnTypeId = dataType.Id
        };

        return exercise;
    }

    public void AddMethodParameter(MethodParameter methodParameter)
    {
        _methodParameters.Add(methodParameter);
    }

    public void AddTestCase(TestCase testCase)
    {
        _testCases.Add(testCase);
    }
}