<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeRegApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">EmployeeRegApp</h1>
            <p class="lead">A sample application for Employee leave registration.</p>
            <p>
                <a href="ApplyLeave.aspx" class="btn btn-success btn-md">Book Leave</a>
            </p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Welcome on board</h2>
                <p>
                   We’re excited to have you join the team!  
                    Explore company resources, meet your colleagues, and 
                    start your journey with us. Check the Employee Directory 
                    below to find and connect with other team members.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">IT Support</h2>
                <p>
                    Having technical issues? The IT team is here to help.  
                    Submit a support request, reset your password, or get assistance 
                    with software and hardware setup.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">HR Support</h2>
                <p>
                    Questions about payroll, benefits, or company policies?  
                    The HR team is available to assist you.  
                    Reach out for onboarding guidance or employee services. 
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div>
    </main>

</asp:Content>