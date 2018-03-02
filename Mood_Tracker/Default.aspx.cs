using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mood_Tracker.classes;

namespace Mood_Tracker
{

    public partial class WebForm1 : System.Web.UI.Page
    {
        private MoodValues moodValues;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                moodValues = (MoodValues)Session["MoodValues"];
                if (moodValues == null)
                {
                    txtTodayDate.Text = DateTime.Today.ToShortDateString();
                    txtDate.Text = DateTime.Today.ToString("MM/dd/yyyy");
                } else
                {
                    loadMoodData();
                }
            }
            else { getMoodData(); }

        }
        protected void loadMoodData()
        {
            if (moodValues != null)
            {
                txtTodayDate.Text = DateTime.Today.ToShortDateString();
                txtDate.Text = moodValues.Date.ToString("MM/dd/yyyy");
                if (moodValues.HoursSleep != null) { txtHoursSleep.Text = moodValues.HoursSleep.ToString(); }
                if (moodValues.DepressedMood != null) { rblDepressedMood.SelectedValue = moodValues.DepressedMood.ToString(); }
                if (moodValues.ElevatedMood != null) { rblElevatedMood.SelectedValue = moodValues.ElevatedMood.ToString(); }
                if (moodValues.Irritability != null) { rblIrritability.SelectedValue = moodValues.Irritability.ToString(); }
                if (moodValues.Anxiety != null) { rblAnxiety.SelectedValue = moodValues.Anxiety.ToString();}
                if (moodValues.Psychotic != null) { rblPsychotic.SelectedValue = moodValues.Psychotic.ToString();}
                if (moodValues.TalkTherapy != null) { rblTalkTherapy.SelectedValue = moodValues.TalkTherapy.ToString();}
                if (moodValues.Suicidal != null) { rblSuicidal.SelectedValue = moodValues.Suicidal.ToString();}
            }
        }
        protected void getMoodData()
        {
            if (moodValues == null) { moodValues = new MoodValues(); }
            else { loadMoodData(); }
        }

        protected void btnDateBack_Click(object sender, EventArgs e)
        {
            DateTime current = Convert.ToDateTime(txtDate.Text);
            current = current.AddDays(-1);
            txtDate.Text = current.ToShortDateString();
        }
        protected void btnDateForward_Click(object sender, EventArgs e)
        {
            DateTime current = Convert.ToDateTime(txtDate.Text);
            if (current < DateTime.Today)
            {
                current = current.AddDays(1);
                txtDate.Text = current.ToShortDateString();
                cvDate.Enabled = true;
                    
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                moodValues.Date = Convert.ToDateTime(txtDate.Text);
                moodValues.HoursSleep = txtHoursSleep.Text;
                moodValues.DepressedMood = rblDepressedMood.SelectedValue;
                moodValues.ElevatedMood = rblElevatedMood.SelectedValue;
                moodValues.Irritability = rblIrritability.SelectedValue;
                moodValues.Anxiety = rblAnxiety.SelectedValue;
                moodValues.Psychotic = rblPsychotic.SelectedValue;
                moodValues.TalkTherapy = rblTalkTherapy.SelectedValue;
                moodValues.Suicidal = rblSuicidal.SelectedValue;
                //lblThanks.Text = "Thank you for your entry.";

                Session["MoodValues"] = moodValues;
                Response.Redirect("Confirmation.aspx");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Session["MoodValues"] = null;
            moodValues = null;
            txtHoursSleep.Text = "";
            rblDepressedMood.SelectedIndex = 0;
            rblElevatedMood.SelectedIndex = 0;
            rblIrritability.SelectedIndex = 0;
            rblAnxiety.SelectedIndex = 0;
            rblPsychotic.SelectedIndex = 0;
            rblTalkTherapy.SelectedIndex = 0;
            rblSuicidal.SelectedIndex = 0;
        }
    }
}