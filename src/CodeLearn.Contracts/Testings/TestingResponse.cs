﻿namespace CodeLearn.Contracts.Testings;

public record TestingResponse(
    int Id,
    int TestId,
    string TestTitle,
    int StudentGroupId,
    string StudentGroupName,
    DateTimeOffset StartDateTime,
    DateTimeOffset EndDateTime,
    int DurationInMinutes);