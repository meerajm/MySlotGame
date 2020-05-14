using System;

namespace BLL
{
    public class SlotGameClass
    {
        private int x;
        public int NoRows
        { set; get; }

        public int NoReels
        { set; get; }

        public int Bal
        { set; get; }

        public int Bet
        { set; get; }

        public int Win
        { set; get; }

        public int Min
        { set { x = 0; } get { return x; } }

        public int Max
        { set; get; }

        public string Msg
        { set; get; }

       
        public int[] GetPositon(int size,int rows, int[][] RA)
        {
            int c = -1;//A counter
            int[] StopPosn = new int[size];
            Random randNum = new Random();
            for (int i = 0; i < size; i++)
            {
                if (i % rows == 0)
                {
                    c++;
                    Max = RA[c].Length;
                    StopPosn[i] = randNum.Next(Min, Max);
                }
                else
                if (StopPosn[i - 1] == (Max - 1))//Check if the previous position is the last index of array
                {
                    StopPosn[i] = 0;
                }
                else
                {
                    StopPosn[i] = StopPosn[i - 1] + 1;
                }
            }
            return StopPosn;
        }
        public int CalcWin(int Sym)
        {
            switch (Sym)
            {
                case 1:
                    Win = Bet * 45;
                    break;
                case 2:
                    Win = Bet * 30;
                    break;
                case 3:
                    Win = Bet * 15;
                    break;
                case 4:
                    Win = Bet * 15;
                    break;

            }
            return (Win);
        }

        public string CheckStatus(int balance, int bet)
        {
            if (balance == 0 || bet > balance)
            {
                Msg = "Sorry no sufficient balance";
            }
            else
            if (bet < 10)
            {
                Msg = "Please place a bet of minimum 10";
            }
            else
            {
                Msg = "";
            }
            return Msg;
        }

        public int CheckWin(int rows,int reels,int[] Pos,int[][] RA)
        {
            int i = 1, x = rows / 2;//x is a variable used for checking middle payline win.  
            int w = 0;//win variable
            while(i<reels)
            {
                if ((RA[0][Pos[x]] == RA[i][Pos[x + (i * rows)]]) && (RA[0][Pos[x]] != 0))
                {
                    i++;
                }
                else
                {
                    break;
                }
            }
            if(i>1)
            {
                w = (CalcWin(RA[0][Pos[x]]) * i) / 2;
            }
            return w;
        }

        public string[] GetDispArr(int rows,int reels,int[] StopPosn,int[][] RA)
        {
            int Size = rows * reels;
            int[] tempArr = new int[Size];
            int k = 0;
            string[] DispImg = new string[Size];
            for(int i=0;i<reels;i++)
            {
                for(int j=0;j<rows;j++)
                {
                    tempArr[k] = RA[i][StopPosn[k]];
                    k++;
                }
            }

            for (int i = 0; i < Size; i++)
            {
                switch (tempArr[i])
                {
                    case 0:
                        DispImg[i] = "SlotGamePics/Dirt.png";
                        break;
                    case 1:
                        DispImg[i] = "SlotGamePics/Apple.png";
                        break;
                    case 2:
                        DispImg[i] = "SlotGamePics/Orange3.jpg";
                        break;
                    case 3:
                        DispImg[i] = "SlotGamePics/Strawberry.png";
                        break;
                    case 4:
                        DispImg[i] = "SlotGamePics/Melon.jpg";
                        break;

                }
            }
            return DispImg;
        }

        public int AddBet(int bet)
        {
            bet += 10;
            return bet;
        }

        public int SubBet(int bet)
        {
            bet -= 10;
            if (bet >= 0)
            {
                return bet;
            }
            else
            {
                return 0;
            }
        }
    }
}
