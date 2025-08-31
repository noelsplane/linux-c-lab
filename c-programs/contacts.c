#include <stdio.h>
#include <string.h>

struct Person {
    char name[50];
    int age;
};

void addContact(struct Person *p) {
    printf("Enter name: ");
    scanf("%s", p->name);
    printf("Enter age: ");
    scanf("%d", &p->age);
}

void displayContact(struct Person p) {
    printf("Name: %s, Age: %d\n", p.name, p.age);
}

int main() {
    struct Person contacts[100];
    int count = 0;
    char choice;

    do {
        printf("\n1. Add contact\n2. View contacts\n3. Exit\nChoice: ");
        scanf(" %c", &choice);

        switch(choice) {
            case '1':
                if (count < 100) {
                    addContact(&contacts[count++]);
                    printf("Contact added!\n");
                }
                break;
            case '2':
                printf("\nContacts:\n");
                for(int i = 0; i < count; i++) {
                    displayContact(contacts[i]);
                }
                break;
            case '3':
                printf("Goodbye!\n");
                break;
            default:
                printf("Invalid choice!\n");
        }
    } while(choice != '3');

    return 0;
}
