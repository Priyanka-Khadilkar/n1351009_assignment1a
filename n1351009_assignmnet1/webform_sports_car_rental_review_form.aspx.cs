using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n1351009_assignmnet1
{
    public partial class webform_sports_car_rental_review_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Reference from Christian's week 3 lab 
            if (Page.IsPostBack)
            {
                Page.Validate();

                if (Page.IsValid)
                {
                    string Reviewer_Name = aspx_reviewer_name.Text.ToString();
                    string Reviewer_Email = aspx_reviewer_email.Text.ToString();
                    string Car_Make = aspx_sports_car_makelist.SelectedValue.ToString();
                    int Rent_Days = Convert.ToInt32(aspx_rent_days.Text);
                    string Reviewer_Future_Survey = aspx_future_car_rental_survey.Text.ToString();
                    string Reviewer_Overall_Experience = aspx_reviewer_rental_car_experience.SelectedValue.ToString();
                    string Reviewer_Overall_Experience_Text = aspx_reviewer_rental_car_experience.SelectedItem.Text.ToString();
                    string Reviewer_Suggestion = aspx_reviewer_suggestion.Text.ToString();

                    submitted_review_summary.InnerHtml = "Your review is as follows: <br>";
                    submitted_review_summary.InnerHtml += "Name: " + Reviewer_Name + "<br>";
                    submitted_review_summary.InnerHtml += "Email: " + Reviewer_Email + "<br>";
                    submitted_review_summary.InnerHtml += "Car's Make: " + Car_Make + "<br>";
                    submitted_review_summary.InnerHtml += "The number of days you rented a car: " + Rent_Days + "<br>";
                    submitted_review_summary.InnerHtml += "Would you rent this car again?: " + Reviewer_Future_Survey + "<br>";
                    submitted_review_summary.InnerHtml += "Your over all experience with us: " + Reviewer_Overall_Experience_Text + "<br>";
                    submitted_review_summary.InnerHtml += "Your suggestion: " + Reviewer_Suggestion + "<br>" + "<br>";

                    if (Reviewer_Overall_Experience == "very_bad")
                    {
                        submitted_review_summary.InnerHtml += "Your Overall Review Rating is: 0";
                    }
                    if (Reviewer_Overall_Experience == "bad")
                    {
                        submitted_review_summary.InnerHtml += "Your Overall Review Rating is: 1";
                    }
                    if (Reviewer_Overall_Experience == "average")
                    {
                        submitted_review_summary.InnerHtml += "Your Overall Review Rating is: 2";
                    }
                    if (Reviewer_Overall_Experience == "good")
                    {
                        submitted_review_summary.InnerHtml += "Your Overall Review Rating is: 3";
                    }
                    if (Reviewer_Overall_Experience == "very_good")
                    {
                        submitted_review_summary.InnerHtml += "Your Overall Review Rating is: 4";
                    }
                    if (Reviewer_Overall_Experience == "excellent")
                    {
                        submitted_review_summary.InnerHtml += "Your Overall Review Rating is: 5";
                    }
                }
            }

        }
    }
}