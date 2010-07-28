﻿<%@ Control Language="C#" Inherits="Orchard.Mvc.ViewUserControl<TenantAddViewModel>" %>
<%@ Import Namespace="Orchard.Mvc.Html"%>
<%@ Import Namespace="Orchard.MultiTenancy.ViewModels"%>
<h1><%: Html.TitleForPage(T("Add New Tenant").ToString()) %></h1> 
<%using (Html.BeginFormAntiForgeryPost()) { %>
    <%: Html.ValidationSummary() %>
    <fieldset>
        <div>
            <label for="Name"><%: T("Name") %></label>
            <input id="Name" class="textMedium" name="Name" type="text" />
        </div>
        <div>
            <label for="RequestUrlHost"><%: T("Host") %></label>
            <input id="RequestUrlHost" class="textMedium" name="RequestUrlHost" type="text" />
            <span class="hint"><%: T("Example: If host is 'orchardproject.net', the tenant site URL is 'http://orchardproject.net/'") %></span>
        </div>
    </fieldset>
    <fieldset>
        <legend><%: T("Database Setup") %></legend>
 	    <div>
            <%: Html.RadioButtonFor(svm => svm.DataProvider, "", new { id = "tenantDatabaseOption" })%>
	        <label for="tenantDatabaseOption" class="forcheckbox"><%: T("Allow the tenant to set up the database") %></label>
	    </div>
        <div>
            <%: Html.RadioButtonFor(svm => svm.DataProvider, "SqlCe", new { id = "builtinDatabaseOption" })%>
            <label for="builtinDatabaseOption" class="forcheckbox"><%: T("Use built-in data storage (SQL Server Compact)") %></label>
        </div>
        <div>
            <%: Html.RadioButtonFor(svm => svm.DataProvider, "SqlServer", new { id = "sqlDatabaseOption" })%>
            <label for="sqlDatabaseOption" class="forcheckbox"><%: T("Use an existing SQL Server (or SQL Express) database") %></label>
            <span data-controllerid="sqlDatabaseOption">
            <label for="DatabaseConnectionString"><%: T("Connection string") %></label>
            <%: Html.EditorFor(svm => svm.DatabaseConnectionString)%>
            <span class="hint"><%: T("Example:") %><br /><%: T("Data Source=sqlServerName;Initial Catalog=dbName;Persist Security Info=True;User ID=userName;Password=password") %></span>
            </span>
            <span data-controllerid="sqlDatabaseOption">
            <label for="DatabaseTablePrefix"><%: T("Database Table Prefix") %></label>
            <%: Html.EditorFor(svm => svm.DatabaseTablePrefix)%>
            </span>
        </div>
    </fieldset>
	<fieldset>
	    <input type="submit" class="button primaryAction" value="<%: T("Save") %>" />
    </fieldset>
 <% } %>