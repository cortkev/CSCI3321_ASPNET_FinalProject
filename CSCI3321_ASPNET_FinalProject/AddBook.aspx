﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h3>Add Books</h3>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Title:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Author:
        </div>
        <div class="col-md-9">
            
            <asp:DropDownList ID="ddlAuthor" runat="server" DataSourceID="sdsAuthors" DataTextField="FirstName" DataValueField="AuthorID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsAuthors" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, FirstName, LastName FROM Authors"></asp:SqlDataSource>
            
        </div>

        <div class="col-md-3">
            Price:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Publish Date:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPublishDate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Publisher:
        </div>
        <div class="col-md-9">
            
            <asp:DropDownList ID="ddlPublishers" runat="server" DataSourceID="sdsPublishers" DataTextField="PublisherName" DataValueField="PublisherID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsPublishers" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
            
        </div>

        <div class="col-md-3">
            Genre:
        </div>
        <div class="col-md-9">
            
            <asp:DropDownList ID="ddlGenres" runat="server" DataSourceID="sdsGenres" DataTextField="GenreName" DataValueField="GenreID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsGenres" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID, GenreName FROM Genres"></asp:SqlDataSource>
            
        </div>

        <div class="col-md-3">
            Word Count:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtWordcount" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-12">
            <asp:Button ID="btnSubmitBook" runat="server" Text="Add Book" OnClick="btnSubmitAuthor_Click" />
        </div>
    </div>

</asp:Content>
