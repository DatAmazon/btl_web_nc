﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="OurReview.ChangePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
          .container_wrap {
              width: 100vw;
              height: 100vh;
              display: flex;
              justify-content: center;
              align-items: center;
          }

          .changePass {
              border: 1px solid #000000;
              width: 340px;
              padding: 0 20px 0 20px;
              margin: auto;
              border-radius: 3px;
          }

          #lbtnTrangChu {
              margin-left: 16px
          }

          .title {
              margin: 20px;
              text-align: center;
          }

          .title_name {
              margin: 0 auto 20px;
          }

          .input {
              margin: 20px auto;
          }

          .confirm {
              display: flex;
              justify-content: space-around;
              margin-bottom: 20px;
          }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container_wrap">
        <div class="changePass" ">
            <h2 class="title" style="font-size: 18px">
               Đổi mật khẩu
            </h2>
            <p class="title_name">
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </p>

            <p class="input">
                <asp:Label ID="Label2" runat="server" Text="Nhập mật khẩu cũ: " Width="160px"></asp:Label>
                <asp:TextBox ID="txtOldPass" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="roldPass" ControlToValidate="txtOldPass"
                    ErrorMessage="Bạn phải mật khẩu cũ" ForeColor="Red" runat="server" Display="None" ValidationGroup="groupChangePass"></asp:RequiredFieldValidator>
            </p>

            <p class="input">
                <asp:Label ID="Label3" runat="server" Text="Nhập mật khẩu mới: " Width="160px"></asp:Label>
                <asp:TextBox ID="txtNewPass" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtNewPass"
                    ErrorMessage="Bạn phải mật khẩu mới" ForeColor="Red" runat="server" Display="None" ValidationGroup="groupChangePass"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="lblRes" runat="server" ForeColor="BlueViolet"></asp:Label>
            </p>
            <asp:ValidationSummary ID="sumChangePass" runat="server" ForeColor="Red" HeaderText=""
                ValidationGroup="groupChangePass" Width="442px" Height="52px" />
            <p class="confirm">
                <asp:Button ID="btnDoiMatKhau" runat="server" Text="Đổi mật khẩu" ValidationGroup="groupChangePass" OnClick="btnDoiMatKhau_Click" />
                <asp:LinkButton ID="lbtnTrangChu" runat="server" OnClick="lbtnTrangChu_Click">Trang chủ</asp:LinkButton>
            </p>
            <%--<asp:Label ID="Label1x" runat="server" Text=""></asp:Label>--%>
        </div>
    </div>
</asp:Content>
