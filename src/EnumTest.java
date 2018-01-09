public enum EnumTest {
    TABLE(0), VIEW(1);

    private final int value;
    //构造方法必须是private或者默认
    private EnumTest(int value) {
        this.value = value;
    }

    public static EnumTest valueOfs(int value) {
        switch (value) {
            case 0:
                return EnumTest.TABLE;
            case 1:
                return EnumTest.VIEW;
            default:
                return null;
        }
    }
}
