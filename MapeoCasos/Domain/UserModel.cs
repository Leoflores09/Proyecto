using System;
using System.Collections.Generic;
using System.Text;
using Data.Connection;

namespace Domain
{
    public class UserModel
    {
        UserData userdata = new UserData();
        public bool LoginUser(string user, string pass)
        {
            return userdata.Login(user,pass);
        }

    }
}
