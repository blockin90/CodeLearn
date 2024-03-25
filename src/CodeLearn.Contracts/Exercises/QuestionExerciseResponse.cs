﻿using CodeLearn.Contracts.Exercises;

namespace CodeLearn.Contracts.QuestionExercises;

public record QuestionExerciseResponse(
    int Id,
    int TestId,
    string Description,
    string Difficulty,
    QuestionChoiceResponseDto[] QuestionChoices);