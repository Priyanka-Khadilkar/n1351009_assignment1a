<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webform_sports_car_rental_review_form.aspx.cs" Inherits="n1351009_assignmnet1.webform_sports_car_rental_review_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sports Car Rental Review</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <h1>Sports Car Rental Review</h1>
    <form id="form1" class="form-horizontal" runat="server">
        <section>
            <label for="aspx_reviewer_name">Your Name</label>
            <asp:TextBox ID="aspx_reviewer_name" placeholder="Enter your name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your name." ControlToValidate="aspx_reviewer_name"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label for="aspx_reviewer_email">Email</label>
            <asp:TextBox ID="aspx_reviewer_email" placeholder="Enter your email" runat="server"></asp:TextBox>
            <%--Reference for regular expression : https://www.w3schools.com/tags/att_input_pattern.asp--%>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter email." ControlToValidate="aspx_reviewer_email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter valid email." ControlToValidate="aspx_reviewer_email" ValidationExpression="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"></asp:RegularExpressionValidator>
        </section>
        <section>
            <label>Car's make</label>
            <asp:RadioButtonList runat="server" ID="aspx_sports_car_makelist">
                <asp:ListItem Text="Chevrolet" Value="chevrolet"></asp:ListItem>
                <asp:ListItem Text="Porsche" Value="porsche"></asp:ListItem>
                <asp:ListItem Text="Mazda" Value="mazda"></asp:ListItem>
                <asp:ListItem Text="Honda" Value="honda"></asp:ListItem>
                <asp:ListItem Text="BMW" Value="bmw"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select car's make." ControlToValidate="aspx_sports_car_makelist"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label for="aspx_rent_days">For how many day(s) did you rent car?</label>
            <asp:TextBox ID="aspx_rent_days" placeholder="Enter days" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter the number of days you rented." ControlToValidate="aspx_rent_days"></asp:RequiredFieldValidator>
            <%--Reference for regular expression : Christian's lab week3 --%>
            <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="aspx_rent_days" Type="Integer" ErrorMessage="Please enter days between 1 and 10." MinimumValue="1" MaximumValue="10"></asp:RangeValidator>
        </section>
        <section>
            <label>Satisfied with?</label>
            <asp:CheckBoxList ID="aspx_reviewer_satisfiedwithlist" runat="server">
                <asp:ListItem Text="Driving experience" Value="driving_experience"></asp:ListItem>
                <asp:ListItem Text="Comfort" Value="comfort"></asp:ListItem>
                <asp:ListItem Text="Value for money" Value="value_for_money"></asp:ListItem>
                <asp:ListItem Text="Styling" Value="styling"></asp:ListItem>
            </asp:CheckBoxList>
        </section>
        <section>
            <label>Which features do you like the most?</label>
            <asp:CheckBoxList ID="aspx_car_featurelist" runat="server">
                <asp:ListItem Text="Safety features" Value="safety_features"></asp:ListItem>
                <asp:ListItem Text="Handling" Value="handling"></asp:ListItem>
                <asp:ListItem Text="Audio System" Value="audio_system"></asp:ListItem>
                <asp:ListItem Text="Navigation System" Value="navigation_system"></asp:ListItem>
                <asp:ListItem Text="Engine and fuel economy" Value="engine_and_fuel_economy"></asp:ListItem>
            </asp:CheckBoxList>
        </section>
        <section>
            <label for="aspx_future_car_rental_survey">Would you rent this car again?</label>
            <asp:DropDownList runat="server" ID="aspx_future_car_rental_survey">
                <asp:ListItem Text="--Select--" Value=""></asp:ListItem>
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
                <asp:ListItem Text="Not Decided" Value="not_decided"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select would you like to rent car again or not." ControlToValidate="aspx_future_car_rental_survey"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label>Please rate your Overall Experience</label>
            <asp:RadioButtonList runat="server" ID="aspx_reviewer_rental_car_experience">
                <asp:ListItem Text="Very bad" Value="very_bad"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="bad"></asp:ListItem>
                <asp:ListItem Text="Average" Value="average"></asp:ListItem>
                <asp:ListItem Text="Good" Value="good"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="very_good"></asp:ListItem>
                <asp:ListItem Text="Excellent" Value="excellent"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select overall experience." ControlToValidate="aspx_reviewer_rental_car_experience"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label for="aspx_reviewer_suggestion">Any Suggestion(optional)</label>
            <asp:TextBox ID="aspx_reviewer_suggestion" placeholder="Write your sugesstion here.." TextMode="MultiLine" Rows="4" Columns="50" runat="server"></asp:TextBox>
        </section>
        <section>
            <asp:ValidationSummary runat="server" ShowSummary="true" />
        </section>
        <section id="submitted_review_summary" runat="server">
        </section>
        <section>
            <asp:Button ID="review_submit_btn" runat="server" Text="Submit" />
        </section>
    </form>
</body>
</html>
