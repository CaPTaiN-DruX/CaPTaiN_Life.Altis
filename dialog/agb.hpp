class agb
{
    idd = 32154;
    name = "agb";
    movingEnable = false;
    enableSimulation = false;
    
    class controlsBackground
    {
        class RscTitleBackground : Life_RscText
        {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            idc = -1;
            x = 0.0875;
            y = 0.06;
            w = 0.825;
            h = 0.04;
        };
        
        class RscBackground : Life_RscText
        {
            colorBackground[] = {0.31,0.31,0.31,1};
            idc = -1;
            x = 0.0875;
            y = 0.12;
            w = 0.825;
            h = 0.82;
        };
        
        class RscTitleText : Life_RscTitle
        {
            colorBackground[] = {0, 0, 0, 0};
            idc = -1;
            text = "LES REGLES:";
            x = 0.0875;
            y = 0.06;
            w = 0.825;
            h = 0.04;
            class Attributes 
            {
                align = "center";
            };
        };
                
        class RsclolStatus : Life_RscStructuredText
        {
            idc = -1;
            colorBackground[] = {0, 0, 0, 0};
            sizeEx = 0.0001;
            text = "<t size = '0.8'> Pour rentré sur le Serveur vous devez avoir lu les regles<br / >§1: Hack / Cheat / Pub / Usebug Interdit <br / >§1.1: Nous acceptons les debutants sur le serveur,mais pas les trolls.<br / >§1.2: Tout bug trouver doit etre signaler a un admin.<br / ><br / >§2: Jouez RP,c'est le plus important !<br / ><br / >§3: Teamspeak : ts3.geek-for-life.fr <br / ><br / > Site : Geek-For-Life.fr <br / >Developpeurs : CaPTaiN,GeNeSyS,Elpacho<br / >Admins : MrVersus,Moimerlin,Victomania,Darky<br / ><br / >Pour devenir Policiers ou Medecins postuler sur le Forum.<br / ></t> <t font ='PuristaBold' size='0.9'>Bon Jeu ! Rappelez vous toujours que ce n'est qu'un jeu .</t>";
            x = 0.1125;
            y = 0.16;
            w = 0.775;
            h = 0.66;
        };    
    };
    
        class Controls
    {
        class naz : Life_RscButtonMenu
        {
            idc = -1;
            text = "Ne pas Acceptez";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            onButtonClick = "closeDialog 0;";
            x = 0.1075;
            y = 0.88;
            w = 0.3;
            h = 0.04;
            class Attributes 
            {
                align = "center";
            };
        };
        
        
        class az : Life_RscButtonMenu
        {
            idc = -1;
            text = "Acceptez";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            onButtonClick = "rulesok = true; closeDialog 0;";
            x = 0.5825;
            y = 0.88;
            w = 0.3;
            h = 0.04;
            class Attributes 
            {
                align = "center";
            };    
        };
    };
};