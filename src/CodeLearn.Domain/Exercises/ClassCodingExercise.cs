﻿namespace CodeLearn.Domain.Exercises;

public sealed class ClassCodingExercise : Exercise
{
    public string ClassSolutionCode { get; private set; }
    public string ClassTesterCode { get; private set; }

    private ClassCodingExercise(
        ExerciseId id,
        TestingId testingId,
        string title,
        string description,
        ExerciseDifficulty difficulty,
        string classSolutionCode,
        string classTesterCode)
        : base(id, testingId, title, description, difficulty)
    {
        ClassSolutionCode = classSolutionCode;
        ClassTesterCode = classTesterCode;
    }

    public static ClassCodingExercise Create(
        TestingId testingId,
        string title,
        string description,
        ExerciseDifficulty difficulty,
        string classSolutionCode,
        string classTesterCode)
    {
        return new ClassCodingExercise(
            ExerciseId.CreateUnique(),
            testingId,
            title,
            description,
            difficulty,
            classSolutionCode,
            classTesterCode);
    }
}