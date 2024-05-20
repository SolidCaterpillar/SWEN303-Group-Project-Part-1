#include "my_application.h"

#include <flutter_linux/flutter_linux.h>
#ifdef GDK_WINDOWING_X11
#include <gdk/gdkx.h>
#endif

#include "flutter/generated_plugin_registrant.h"

struct _MyApplication {
  GtkApplication parent_instance;
  char **dart_entrypoint_arguments;
};

G_DEFINE_TYPE(MyApplication, my_application, GTK_TYPE_APPLICATION)

void my_application_init(MyApplication *self) {}

void my_application_dispose(GObject *object) {
  MyApplication *self = MY_APPLICATION(object);
  g_clear_pointer(&self->dart_entrypoint_arguments, g_strfreev);
  G_OBJECT_CLASS(my_application_parent_class)->dispose(object);
}

static void my_application_activate(GApplication *application) {
  MyApplication *self = MY_APPLICATION(application);
  GtkWindow *window =
      GTK_WINDOW(gtk_application_window_new(GTK_APPLICATION(application)));
  gtk_window_set_title(window, "Expense Tracker");
  gtk_window_set_default_size(window, 375, 812);
  gtk_window_set_resizable(window, FALSE);

  g_autoptr(FlDartProject) project = fl_dart_project_new();
  fl_dart_project_set_dart_entrypoint_arguments(
      project, self->dart_entrypoint_arguments);

  FlView *view = fl_view_new(project);
  gtk_widget_show(GTK_WIDGET(view));
  gtk_container_add(GTK_CONTAINER(window), GTK_WIDGET(view));

  gtk_widget_show(GTK_WIDGET(window));
  fl_register_plugins(FL_PLUGIN_REGISTRY(view));
}

static void my_application_class_init(MyApplicationClass *klass) {
  G_APPLICATION_CLASS(klass)->activate = my_application_activate;
  G_OBJECT_CLASS(klass)->dispose = my_application_dispose;
}

MyApplication *my_application_new() {
  return MY_APPLICATION(g_object_new(my_application_get_type(),
                                     "application-id", APPLICATION_ID, "flags",
                                     G_APPLICATION_NON_UNIQUE, nullptr));
}
