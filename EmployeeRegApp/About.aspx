<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="EmployeeRegApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
            <p>
                The Employee Directory is designed to help you easily find, connect, and collaborate 
                with colleagues across the organization. Whether you are a new team member or a 
                long-serving employee, the directory provides quick access to essential contact 
                details and departmental information.
            </p>
            <p>
                This application also serves as a central hub for onboarding and employee support 
                resources, making it easier to settle into your role and stay informed.
            </p>

            <h3>Our Purpose</h3>
            <ul>
                <li><strong>Connect People</strong>: Enable employees to find one another by name, department, or role.</li>
                <li><strong>Support Collaboration</strong>: Strengthen teamwork by making colleagues more accessible.</li>
                <li><strong>Streamline Onboarding</strong>: Help new employees feel welcomed and supported from day one.</li>
                <li><strong>Provide Resources</strong>: Centralize access to IT and HR support for quick assistance.</li>
            </ul>

            <h3>Key Features</h3>
            <ul>
                <li><strong>Employee Search</strong>: Quickly locate employees by name or department.</li>
                <li><strong>Contact Information</strong>: View email addresses and other essential details.</li>
                <li><strong>Onboarding Resources</strong>: Guidance for new employees to get started.</li>
                <li><strong>Support Channels</strong>: Dedicated IT and HR support information.</li>
            </ul>

            <h3>Our Vision</h3>
            <p>
                We believe that building strong connections across teams leads to better collaboration, 
                innovation, and job satisfaction. The Employee Directory is one of the tools we provide 
                to make working together easier and more efficient.
            </p>

            <a class="footer-link" href="Default.aspx">&larr; Back to Employee Directory</a>
        
    </main>
</asp:Content>
