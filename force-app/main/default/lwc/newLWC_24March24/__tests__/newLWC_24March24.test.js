import { createElement } from 'lwc';
import NewLWC_24March24 from 'c/newLWC_24March24';

describe('c-new-l-w-c-24-march24', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('TODO: test case generated by CLI command, please fill in test logic', () => {
        // Arrange
        const element = createElement('c-new-l-w-c-24-march24', {
            is: NewLWC_24March24
        });

        // Act
        document.body.appendChild(element);

        // Assert
        // const div = element.shadowRoot.querySelector('div');
        expect(1).toBe(1);
    });
});