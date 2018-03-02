using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mood_Tracker

{
    public class FourButton
    {
        //fields
        private string _Rating;      //Rating


        //constructor
        public FourButton()
        {
            _Rating = "";
        }

        //Rating property
        public string Rating
        {
            get { return _Rating; }
            set { _Rating = value; }
        }
    }
}