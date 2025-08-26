<%@ Page Title="Apply for Leave" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApplyLeave.aspx.cs" Inherits="EmployeeRegApp.ApplyLeave" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <h1>Apply for Leave</h1>
        <asp:Panel runat="server" CssClass="form-horizontal">
            <div class="form-group">
                <label for="txtEmployeeName">Employee Name:</label>
                <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="ddlLeaveType">Leave Type:</label>
                <asp:DropDownList ID="ddlLeaveType" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Annual" Value="Annual" />
                    <asp:ListItem Text="Sick" Value="Sick" />
                    <asp:ListItem Text="Casual" Value="Casual" />
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="txtStartDate">Start Date:</label>
                <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" TextMode="Date" />
            </div>
            <div class="form-group">
                <label for="txtEndDate">End Date:</label>
                <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control" TextMode="Date" />
            </div>
            <div class="form-group">
                <label for="txtReason">Reason:</label>
                <asp:TextBox ID="txtReason" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Apply" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
        </asp:Panel>
    </main>
</asp:Content>      