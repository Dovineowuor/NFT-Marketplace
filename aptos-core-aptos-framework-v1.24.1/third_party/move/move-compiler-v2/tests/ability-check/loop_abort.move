module 0x42::Test {
    struct Impotent {}

    fun test0() {
        let _x = Impotent {};
        loop {}
    }

    // v1 doen't compile
    fun test1() {
        let _x = Impotent {};
        while (true) {

        }
    }

    fun test2(b: bool) {
        let _x = Impotent {};
        if (b) {
            loop {}
        } else {
            abort(42)
        }
    }
}
