using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mood_Tracker.classes
{
    public class MoodValues
    {
        public MoodValues()
        {

        }
        public DateTime Date { get; set; }
        public String HoursSleep { get; set; }
        public String DepressedMood { get; set; }
        public String ElevatedMood { get; set; }
        public String Irritability { get; set; }
        public String Anxiety { get; set; }
        public String Psychotic { get; set; }
        public String TalkTherapy { get; set; }
        public String Suicidal { get; set; }
    }
}