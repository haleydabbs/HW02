#ifndef MY_LIB_H
#define MY_LIB_H

/* type definitions */
typedef unsigned short u16;

/* common */
#define OFFSET(r,c,rowlen) ((r)*(rowlen)+(c))

/* ================================= DISPLAY ================================== */

/* display control register */
#define REG_DISPCTL (*(u16 *)0x4000000)
#define MODE3 3
#define BG2_ENABLE (1<<10)

/* display status (scanline) registers */
#define SCANLINECOUNTER (*(volatile u16 *)0x4000006)

/* screen constants */
#define SCREENHEIGHT 160
#define SCREENWIDTH 240
#define SCREENSIZE 38400

/* static videoBuffer */
extern u16 *videoBuffer;

/* common color macros */
#define COLOR(r,g,b) ((r) | (g)<<5 | (b)<<10)
#define BLACK 0
#define WHITE COLOR(31,31,31)
#define LIGHT_GRAY COLOR(24,24,24)
#define GRAY COLOR(16,16,16)
#define DARK_GRAY COLOR(8,8,8)

#define RED COLOR(31,0,0)
#define GREEN COLOR(0,31,0)
#define BLUE COLOR(0,0,31)
#define YELLOW COLOR(31,31,0)
#define DARK_YELLOW COLOR(30,30,0)

#define CYAN COLOR(0,31,31)
#define MAGENTA COLOR(31,0,31)
#define SKY COLOR(0,27,29)
#define GLASS_DARK COLOR(0, 22, 24)
#define GLASS_LIGHT COLOR(0, 24, 26)
#define BRICK COLOR(15,8,8)

#define SUNSET1 COLOR(15, 0 ,31)
#define SUNSET2 COLOR(20, 3 ,31)
#define SUNSET3 COLOR(23, 6 ,31)
#define SUNSET4 COLOR(25, 9 ,31)

/* drawing functions */
void setPixel(int row, int col, u16 color);
void drawRect(int row, int col, int height, int width, u16 color);
void drawBG();
void fillScreen(u16 color);
void waitForVBlank();

/* ================================== INPUT =================================== */

/* button register */
#define BUTTONS (*(volatile u16 *)0x04000130)

/* button masks */
#define BUTTON_A		(1<<0)
#define BUTTON_B		(1<<1)
#define BUTTON_SELECT	(1<<2)
#define BUTTON_START	(1<<3)
#define BUTTON_RIGHT	(1<<4)
#define BUTTON_LEFT		(1<<5)
#define BUTTON_UP		(1<<6)
#define BUTTON_DOWN		(1<<7)
#define BUTTON_R		(1<<8)
#define BUTTON_L		(1<<9)

/* button variables */
extern u16 oldButtons;
extern u16 buttons;

/* button macros */
#define BUTTON_HELD(key)  (~BUTTONS & (key))
#define BUTTON_PRESSED(key) (!(~oldButtons & (key)) && (~buttons & (key)))

/* ============================== MISCELLANEOUS =============================== */

/* misc */
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);

#endif
