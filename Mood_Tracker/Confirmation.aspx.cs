using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mood_Tracker.classes;

namespace Mood_Tracker
{
    public partial class Confirmation : System.Web.UI.Page
    {
        private MoodValues moodValues;
        protected void Page_Load(object sender, EventArgs e)
        {
            moodValues = (MoodValues)Session["MoodValues"];
            loadMoodData();
        }

        protected void loadMoodData()
        {
            if (moodValues != null)
            {
                lblDate.Text = moodValues.Date.ToShortDateString();
                lblHoursSleep.Text = moodValues.HoursSleep.ToString();
                lblDepressedMood.Text = moodValues.DepressedMood.ToString();
                lblElevatedMood.Text = moodValues.ElevatedMood.ToString();
                lblIrritability.Text = moodValues.Irritability.ToString();
                lblAnxiety.Text = moodValues.Anxiety.ToString();
                lblPsychotic.Text = moodValues.Psychotic.ToString();
                lblTalkTherapy.Text = moodValues.TalkTherapy.ToString();
                lblSuicidal.Text = moodValues.Suicidal.ToString();
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            lblThanks.Text = "Thank you for your entry.";
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}