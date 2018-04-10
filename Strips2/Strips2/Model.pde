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
        StripModel strip2 = new StripModel(new StripModel.Metrics(5).setOrigin(0,0,0));
        addPoints(strip2);
        //new LXTransform().translate(STRIP_SPACING, 0, 0)
    }
    

  }
}
