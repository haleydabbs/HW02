/* --------- Function prototypes --------*/
void initialize();
void update();
void draw();
int starGenerator();
void starReset(int);
void starDraw();
void starCatcherDraw();
int starSpeedGenerator();

/* --------- Variables --------*/
//Buttons
u16 buttons;
u16 oldButtons;

//Background
u16 bgColor;

//Star specs
//star 1
int s1x;
int s1y;
int s1Oldx;
int s1Oldy;
int s1Vel;
//star2
int s2x;
int s2y;
int s2Vel;
int s2Oldx;
int s2Oldy;
//star dimensions
#define STARDIMS 4
#define STARCOLOR WHITE

//StarCatcher specs
int cx;
int cy;
int cOldx;
int cOldy;
int cWidth;
int cHeight;
#define CATCHERCOLOR GREEN
int cVel;