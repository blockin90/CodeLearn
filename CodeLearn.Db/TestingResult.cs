﻿using System;
using System.Collections.Generic;

namespace CodeLearn.Db
{
    public partial class TestingResult
    {
        public TestingResult()
        {
            TestingAnswers = new HashSet<TestingAnswer>();
        }

        public int Id { get; set; }
        public int TestingId { get; set; }
        public string StudentId { get; set; }
        public int Score { get; set; }
        public DateTime PassingDate { get; set; }

        public virtual Student Student { get; set; } = null!;
        public virtual Testing Testing { get; set; } = null!;
        public virtual ICollection<TestingAnswer> TestingAnswers { get; set; }
    }
}
