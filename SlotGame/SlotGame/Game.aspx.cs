using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace SlotGame
{
    public partial class Game : System.Web.UI.Page
    {
        SlotGameClass ob = new SlotGameClass();             
        protected void Page_Load(object sender, EventArgs e)
        {
            ob.NoReels = 3;
            ob.NoRows = 3;
            if (!IsPostBack)
            {
                ob.Bal = 1000;
                txtBet.Text = "20";
                lblBalance.Text = ob.Bal.ToString();
            }                        
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            imgYouWin.Visible = false;
            lblWin.Visible = false;
            ob.Bal = Convert.ToInt32(lblBalance.Text);
            ob.Bet= Convert.ToInt32(txtBet.Text);
            int[][] ReelArr = new int[ob.NoReels][];
            ReelArr[0] = new int[] { 1, 1, 1, 2, 2, 2, 3, 3, 4, 4, 0, 0, 0 };//Reel 1 and it's assigned symbol ids
            ReelArr[1] = new int[] { 0, 1, 2, 3, 4, 0, 2, 3, 4, 0, 3, 4, 0 };//Reel 2 and it's assigned symbol ids
            ReelArr[2] = new int[] { 0, 1, 2, 3, 4, 3, 4, 0, 3, 4, 0, 0, 0 };//Reel 3 and it's assigned symbol ids

            string message = ob.CheckStatus(ob.Bal, ob.Bet);
            
            if (message == "")
            {
                ob.Bal = ob.Bal - ob.Bet;
                lblBalance.Text = ob.Bal.ToString();
                
                int Size = (ob.NoReels * ob.NoRows) ;//Total reels* No. of rows to be displayed
                int[] StopPos = new int[Size];
                
                StopPos = ob.GetPositon(Size, ob.NoRows, ReelArr);      
                
                //Check if there is a win in the middle row
                ob.Win = ob.CheckWin(ob.NoRows,ob.NoReels,StopPos,ReelArr);
                if (ob.Win != 0)
                {
                    ob.Bal = ob.Bal + ob.Win;
                    lblBalance.Text = ob.Bal.ToString();
                    imgYouWin.Visible = true;
                    lblWin.Visible = true;
                    lblWin.Text = ob.Win.ToString();
                }
                
                string[] DispImg = new string[Size];
                DispImg = ob.GetDispArr(ob.NoRows, ob.NoReels, StopPos, ReelArr);
             
                lblPositions.Text = string.Join(", ", StopPos); 
                string result = String.Join("||", DispImg);
                hdnImgArr.Value = result;
                string script = "window.onload = Button1_Click();";
                ClientScript.RegisterStartupScript(this.GetType(), "Button1_Click", script, true);

            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = message; 
            }
                
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ob.Bet = Convert.ToInt32(this.txtBet.Text);
            ob.Bet = ob.AddBet(ob.Bet);
            txtBet.Text = ob.Bet.ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ob.Bet = Convert.ToInt32(this.txtBet.Text);
            ob.Bet = ob.SubBet(ob.Bet);
            txtBet.Text = ob.Bet.ToString();
        }

       
    }
}