import java.util.List;

LXModel buildModel() {
  // A three-dimensional grid model
  return new GridModel3D();
}

public static class GridModel3D extends LXModel {
  public static final float STRIP_SPACING = 5*CM;
  
  public GridModel3D() {
    super(new Fixture());
  }
  
  public static class Fixture extends LXAbstractFixture {

    Fixture() {
        StripModel strip = new StripModel(new StripModel.Metrics(15).setOrigin(0,0,5));
        addPoints(strip);
        StripModel strip2 = new StripModel(new StripModel.Metrics(15).setOrigin(0,0,5));
        addPoints(strip2);
        //new LXTransform().translate(STRIP_SPACING, 0, 0)
    }
    

  }
}

/**
 * The base addressabl  e fixture, a Strip with LEDs embedded inside.
 */
public static class Strip extends LXModel {
  public static final int NUM_LEDS = 30; // 3 m with 30 LEDs/m
  public static final float LED_OFFSET = 5*CM;
  public static final float LED_SPACING = 2*CM;
  
  // Orientation of a leaf relative to leaf assemblage
  public static class Orientation {
    
    public final int index;
    
    // X-Y position relative to leaf assemblage base
    // y-axis pointing "up" the leaf assemblage 
    public final float x;
    public final float y;
    
    // Rotation about X-Y plane relative to parent assemblage
    public final float theta;
    
    // Tilt of the individual leaf
    public final float tilt;
    
    Orientation(int index, float x, float y, float theta) {
      this.index = index;
      this.x = x;
      this.y = y;
      this.theta = theta;
      this.tilt = -QUARTER_PI + HALF_PI * (float) Math.random();
    }
  }
  
  public final LXPoint point;
  
  public final float x;
  public final float y;
  public final float z;
  
  public final LXVector[] coords = new LXVector[4];
  
  public final Orientation orientation;
  
  public Strip() {
    this(new LXTransform());
  }
  
  public Strip(LXTransform t) {
    this(t, new Orientation(0, 0, 0, 0));
  }
  
  public Strip(LXTransform t, Orientation orientation) {
    super(new Fixture(t, orientation));
    this.orientation = orientation;
    this.x = t.x();
    this.y = t.y();
    this.z = t.z();
    this.point = this.points[0];
  }
  
  private static class Fixture extends LXAbstractFixture {
    Fixture(LXTransform t, Orientation orientation) {
      t.push();
      t.translate(0, LED_OFFSET, 0);
      addPoint(new LXPoint(t));
      for(int i = 0; i<NUM_LEDS; i++){
        t.translate(0, LED_SPACING, 0);
        addPoint(new LXPoint(t));
      }
    }
  }
}
