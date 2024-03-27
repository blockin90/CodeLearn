﻿using CodeLearn.Application.Authentication.Commands.RegisterStudent;
using CodeLearn.Application.Authentication.Commands.RegisterTeacher;
using CodeLearn.Application.Common.IdentityModels;
using CodeLearn.Contracts.Authentication;

namespace CodeLearn.Api.Common.Mapping;

public class AuthenticationMappingConfig : IRegister
{
    public void Register(TypeAdapterConfig config)
    {
        config.NewConfig<RegisterTeacherRequest, RegisterTeacherCommand>()
            .ConstructUsing(src => new RegisterTeacherCommand(
                UserCredentials.Create(src.Email, src.Password),
                UserFullName.Create(src.FirstName, src.LastName, src.Patronymic)));

        config.NewConfig<RegisterStudentRequest, RegisterStudentCommand>()
            .ConstructUsing(src => new RegisterStudentCommand(
                UserCredentials.Create(src.Email, src.Password),
                UserFullName.Create(src.FirstName, src.LastName, src.Patronymic),
                UserStudentDetails.Create(src.StudentGroupName, src.EnrolmentYear)));
    }
}