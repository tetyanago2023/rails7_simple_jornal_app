// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import { Turbo } from "@hotwired/turbo-rails"

document.addEventListener("turbo:load", () => {
    addNestedFields('ingredients', 'ingredient_fields');
});

function addNestedFields(association, content) {
    const addButton = document.getElementById(`add_${association}`);
    const fieldsContainer = document.getElementById(`${association}_fields`);

    if (addButton && fieldsContainer) {
        addButton.addEventListener('click', () => {
            const time = new Date().getTime();
            const regexp = new RegExp(`new_${association}`, 'g');
            const newContent = content.replace(regexp, time);

            // Using Turbo Streams to append new content
            TurboStreams.append(
                new TurboStreams.Frame('complex_dish_kitchens', { content: newContent })
            );
        });
    }
}
