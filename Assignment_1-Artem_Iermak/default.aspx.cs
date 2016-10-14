using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_1_Artem_Iermak
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            /* change text from input from to Int32 */
            /*Int32 radioBtn1 = Convert.ToInt32(radioResult1.Text);
            Int32 radioBtn2 = Convert.ToInt32(radioResult2.Text);
            Int32 radioBtn3 = Convert.ToInt32(radioResult3.Text);
            Int32 radioBtn4 = Convert.ToInt32(radioResult4.Text);*/

            Int32 scored1 = Convert.ToInt32(txtScored1.Text);
            Int32 scored2 = Convert.ToInt32(txtScored2.Text);
            Int32 scored3 = Convert.ToInt32(txtScored3.Text);
            Int32 scored4 = Convert.ToInt32(txtScored4.Text);

            Int32 allowed1 = Convert.ToInt32(txtAllowed1.Text);
            Int32 allowed2 = Convert.ToInt32(txtAllowed2.Text);
            Int32 allowed3 = Convert.ToInt32(txtAllowed3.Text);
            Int32 allowed4 = Convert.ToInt32(txtAllowed4.Text);

            Int32 Spectators1 = Convert.ToInt32(txtSpectators1.Text);
            Int32 Spectators2 = Convert.ToInt32(txtSpectators2.Text);
            Int32 Spectators3 = Convert.ToInt32(txtSpectators3.Text);
            Int32 Spectators4 = Convert.ToInt32(txtSpectators4.Text);

            // display results
            lblNumberOfGamesWon.Text = Convert.ToString(scored1);

            /* [][][][][] calculate game results [][][][][][]*/

            /* ----- a.	# of games won ----- */

            /* ----- b.	# of games lost ----- */

            /* ----- c.	Winning % - what % of the player's games did they win.  
             * For example, if they win 3 of 4 game the Winning % would show as .75 ----- */

            /* ----- d.	Total points scored ----- */

            /* ----- e.	Total points allowed ----- */

            /* ----- f.	Point Differential - the difference between 
             * the total points scored and total points allowed.  
             * For example, if the player scores 12 total points 
             * and allows 8 total points, the Point Differential is 4.  
             * If the player scores 10 total points and allows 15 
             * total points the Point Differential is -5. ----- */

            /* ----- g.	Total Spectators ----- */

            /* ----- h.	Average Spectators ----- */
        }


    }
}