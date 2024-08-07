export type TestingSession = {
  id: number;
  testingId: number;
  testId: number;
  testTitle: string;
  status: string;
  startDateTime: string;
  finishDateTime: string;
  correctQuestionsCount: number;
  solvedExercisesCount: number;
};
