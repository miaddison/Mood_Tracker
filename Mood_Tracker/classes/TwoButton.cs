using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mood_Tracker
{
    public class TwoButton
    {

        //fields
        private string _Rating;      //Rating


        //constructor
        public TwoButton()
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