/* --------- Function prototypes --------*/
void initialize();
void update();
void draw();
int starGenerator();

/* --------- Variables --------*/
//Buttons
u16 buttons;
u16 oldButtons;
//Background
u16 bgColor;
//Counters
int starCounter;
//Star specs
int s1x;
int s1y;
int s1Oldx;
int s1Oldy;
int s1Vel;
// int s2x;
// int s2y;
// int s2Vel;
// int s3x;
// int s3y;
// int s3Vel;
#define STARDIMS 5