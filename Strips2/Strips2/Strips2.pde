/** 
 * By using LX Studio, you agree to the terms of the LX Studio Software
 * License and Distribution Agreement, available at: http://lx.studio/license
 *
 * Please note that the LX license is not open-source. The license
 * allows for free, non-commercial use.
 *
 * HERON ARTS MAKES NO WARRANTY, EXPRESS, IMPLIED, STATUTORY, OR
 * OTHERWISE, AND SPECIFICALLY DISCLAIMS ANY WARRANTY OF
 * MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR A PARTICULAR
 * PURPOSE, WITH RESPECT TO THE SOFTWARE.
 */

// ---------------------------------------------------------------------------
//
// Welcome to LX Studio! Getting started is easy...
// 
// (1) Quickly scan this file
// (2) Look at "Model" to define your model
// (3) Move on to "Patterns" to write your animations
// 
// ---------------------------------------------------------------------------

// Reference to top-level LX instance
heronarts.lx.studio.LXStudio lx;


void setup() {
  // Processing setup, constructs the window and the LX instance
  size(800, 720, P3D);
  lx = new heronarts.lx.studio.LXStudio(this, buildModel(), MULTITHREADED);
  lx.ui.setResizable(RESIZABLE);
}

void initialize(heronarts.lx.studio.LXStudio lx, heronarts.lx.studio.LXStudio.UI ui) {
  // Add custom components or output drivers here
  //final String ARTNET_IP = "192.168.1.2";
  //try {
  //  // Construct a new DatagramOutput object
  //  LXDatagramOutput output = new LXDatagramOutput(lx);

  //   //Each output of the Pixlite is configured to run on a separate universe
  //   for (int universeNumber = 0; universeNumber <= 3; ++universeNumber){
  //    int[] first100Points = new int[90];
  //    for (int i = 0; i < first100Points.length; ++i) {
  //      first100Points[i] = i + (90 * universeNumber);
  //    }
  //    ArtNetDatagram first100PointsDatagram = new ArtNetDatagram(first100Points, universeNumber);
  //    first100PointsDatagram.setAddress(ARTNET_IP);
  //    output.addDatagram(first100PointsDatagram);    
  //   }
  //  // Add the datagram output to the LX engine
  //  lx.addOutput(output);
  //} catch (Exception x) {
  //  x.printStackTrace();
  //}
}

void onUIReady(heronarts.lx.studio.LXStudio lx, heronarts.lx.studio.LXStudio.UI ui) {
  // Add custom UI components here
}

void draw() {
  // All is handled by LX Studio
}

// Configuration flags
final static boolean MULTITHREADED = true;
final static boolean RESIZABLE = true;

// Helpful global constants
final static float INCHES = 1;
final static float IN = INCHES;
final static float FEET = 12 * INCHES;
final static float FT = FEET;
final static float CM = 2.54 * IN;
final static float MM = CM * .1;
final static float M = CM * 00;

// Helpful global constants
final static float INCHES_PER_METER = 39.3701;
final static float METERS = INCHES_PER_METER * INCHES ;
final static float METERS_PER_INCH = 1 / INCHES_PER_METER;
