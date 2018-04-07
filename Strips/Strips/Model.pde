LXModel buildModel() {
  // A three-dimensional grid model
  return new GridModel3D();
}

public static class GridModel3D extends LXModel {
  
  // 15 stripes, 3 meters long, 30 pixels per meter
  public final static int SIZE_X = 15;
  public final static int SIZE_Y = 90;
  public final static int SIZE_Z = 50;
  
  public GridModel3D() {
    super(new Fixture());
  }
  
  public static class Fixture extends LXAbstractFixture {
    Fixture() {
        for (int x = 0; x < SIZE_X; ++x) {
          for (int y = 0; y < SIZE_Y; ++y) {
            addPoint(new LXPoint(x, y));
          }
        }
    }
  }
}