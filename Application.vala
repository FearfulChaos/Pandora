public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.fearfulchaos.Pandora",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    protected override void activate () {
        var button_hello = new Gtk.Button.with_label ("Click me!") {
            margin = 12
        };

        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Welcome DragonGuard"
        };
        main_window.add (button_hello);
        main_window.show_all ();

        button_hello.clicked.connect (() => {
            button_hello.label = "Welcome DragonGuard!";
            button_hello.sensitive = false;
        });
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
