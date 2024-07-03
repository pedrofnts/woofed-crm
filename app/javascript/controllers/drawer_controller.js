import { Controller } from "stimulus";
import { Drawer } from "flowbite";

export default class extends Controller {
  connect() {
    this.drawer = new Drawer(this.element, {
      placement: "left",
      backdrop: true,
      bodyScrolling: false,
      backdropClasses:
        "bg-gray-900/50 dark:bg-gray-900/80 fixed inset-0 z-30 pointer-events-none",
    });
    this.drawer.hide();
  }
  disconnect() {
    this.drawer.show();
  }
  modalRemove() {
    this.drawer.remove();
  }
}
