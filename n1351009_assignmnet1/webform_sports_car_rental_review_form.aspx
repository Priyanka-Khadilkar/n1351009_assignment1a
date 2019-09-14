<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webform_sports_car_rental_review_form.aspx.cs" Inherits="n1351009_assignmnet1.webform_sports_car_rental_review_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sports Car Rental Review</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <h1>Sports Car Rental Review</h1>
    <form id="form1" class="form-horizontal" method="post" runat="server" action="https://postman-echo.com/post">
        <section>
            <label for="aspx_reviewer_fullname">Your Name</label>
            <asp:TextBox ID="aspx_reviewer_fullname" placeholder="Enter your name" runat="server"></asp:TextBox>
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
        </section>
        <section>
            <label>Satisfied with?</label>
            <asp:CheckBoxList ID="aspx_reviewer_satisfiedwithlist" runat="server">
                <asp:ListItem Text="Driving experience" Value="drivingexperience"></asp:ListItem>
                <asp:ListItem Text="Comfort" Value="comfort"></asp:ListItem>
                <asp:ListItem Text="Value for money" Value="valueformoney"></asp:ListItem>
                <asp:ListItem Text="Styling" Value="styling"></asp:ListItem>
            </asp:CheckBoxList>
        </section>
        <section>
            <label>Which are the features you like the most?</label>
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
                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="no"></asp:ListItem>
                <asp:ListItem Text="Not Decided" Value="notdecided"></asp:ListItem>
            </asp:DropDownList>
        </section>
        <section>
            <label>Please rate your Overall Experience</label>
            <asp:RadioButtonList runat="server" ID="aspx_reviewer_rental_car_experience">
                <asp:ListItem Text="Very bad" Value="verybad"></asp:ListItem>
                <asp:ListItem Text="Bad" Value="bad"></asp:ListItem>
                <asp:ListItem Text="Good" Value="good"></asp:ListItem>
                <asp:ListItem Text="Very Good" Value="verygood"></asp:ListItem>
                <asp:ListItem Text="Excellent" Value="excellent"></asp:ListItem>
            </asp:RadioButtonList>
        </section>
        <section>
            <label for="aspx_reviewer_suggestion">Any Suggestion</label>
            <asp:TextBox ID="aspx_reviewer_suggestion" placeholder="Write your sugesstion here.." TextMode="MultiLine" Rows="4" Columns="50" runat="server"></asp:TextBox>
        </section>
        <section>
            <asp:Button ID="review_submit_btn" runat="server" Text="Submit" />
        </section>
    </form>
</body>
</html>
