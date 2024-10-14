/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package hoa.dev;

import hoa.dev.data.dao.Database;
import hoa.dev.data.dao.DatabaseDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;

public class BaseServlet extends HttpServlet {
//ham init se chay truoc doget va dopost
    //tranh guiw nhieu lan thif tao lop cha baseservlet
    @Override
    public void init() throws ServletException {
        DatabaseDao.init(new Database());

    }

  
}
