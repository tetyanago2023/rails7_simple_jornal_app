// app/javascript/controllers/nested_fields_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    connect() {
        console.log("Connected to NestedFieldsController");
    }

    addFields(event) {
        event.preventDefault();
        const target = event.currentTarget;
        const association = target.dataset.association;
        const content = target.dataset.content;

        // Use Turbo Streams to append new fields
        TurboStreams.append(target, { partial: content, content: content });
    }

    removeFields(event) {
        event.preventDefault();
        const target = event.currentTarget;
        const wrapper = target.closest(".nested-fields");

        // Use Turbo Streams to remove fields
        TurboStreams.remove(wrapper);
    }
}
