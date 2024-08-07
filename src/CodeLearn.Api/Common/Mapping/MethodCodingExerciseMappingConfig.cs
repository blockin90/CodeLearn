﻿using CodeLearn.Application.Exercises.MethodCodingExercises.Commands.CreateMethodCodingExercise;
using CodeLearn.Contracts.Exercises.MethodCoding;
using CodeLearn.Domain.Exercises;

namespace CodeLearn.Api.Common.Mapping;

public class MethodCodingExerciseMappingConfig : IRegister
{
    public void Register(TypeAdapterConfig config)
    {
        config.NewConfig<(int Id, MethodCodingExerciseRequest Request), CreateMethodCodingExerciseCommand>()
            .Map(dest => dest.TestId, src => src.Id)
            .Map(dest => dest, src => src.Request);

        config.NewConfig<MethodCodingExercise, TeacherMethodCodingExerciseResponse>()
            .Map(dest => dest.Id, src => src.Id.Value);

        config.NewConfig<MethodCodingExercise, StudentMethodCodingExerciseResponse>()
            .Map(dest => dest.TestId, src => src.TestId.Value)
            .Map(dest => dest.Id, src => src.Id.Value);
    }
}