﻿<%@ Control Language="C#" Inherits="Orchard.Mvc.ViewUserControl<Orchard.ContentTypes.ViewModels.EditPartFieldViewModel>" %>
    <fieldset class="manage-field">
        <h3><%:Model.Name %> <span>(<%:Model.FieldDefinition.Name %>)</span></h3>
        <div class="manage">
            <%:Html.ActionLink(T("Remove").Text, "RemoveFieldFrom", new { area = "Orchard.ContentTypes", id = Model.Part.Name, Model.Name }, new { itemprop = "RemoveUrl UnsafeUrl" })%><%--// <- some experimentation--%>
        </div>
        <div class="details"><%
            Html.RenderTemplates(Model.Templates);
            %><%:Html.HiddenFor(m => m.Name)
            %><%:Html.HiddenFor(m => m.FieldDefinition.Name)
            %><%:Html.HiddenFor(m => m.Index) %>
        </div>
    </fieldset>