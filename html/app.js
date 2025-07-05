const { createApp } = Vue;

createApp({
    data() {
        return {
            visible: false,
            showInput: false,
            categories: [],
            consumables: {},
            currentRoute: 'home',
            activeCraftable: null,
            quantity: 1,
            min: 1,
            max: 10,
            crafttime: 15000,
            language: {
                InputHeader: 'How many {{msg}} you want to craft',
                InputCraft: 'Craft Item',
                InputCancel: 'Cancel',
                BackButton: 'Back',
                ExitButton: 'Exit',
                CraftHeader: 'Crafting',
                InvalidAmount: 'Invalid Amount',
                Crafting: 'Crafting...',
                FinishedCrafting: 'You finished crafting',
                NotEnough: 'Not enough material for this recipe'
            }
        };
    },
    mounted() {
        window.addEventListener("message", this.onMessage);
        window.addEventListener("keydown", this.onKeypress);
    },
    destroyed() {
        window.removeEventListener("message");
        window.removeEventListener('keydown');
    },
    computed: {
        InputCraftText() {
            return this.activeCraftable?.Text && this.language.InputHeader ? this.language.InputHeader.replace('{{msg}}', this.activeCraftable.Text) : '';
        }
    },
    methods: {
        onMessage(event) {
            switch(event.data.type) {
                case "rsg-campfire-open":
                    this.setData(event.data);
                    this.visible = true;
                    break;
                default:
                    break;
            }
        },
        onKeypress(event) {
            if (event.key === "Escape") {
                this.currentRoute = 'home';
                this.closeView();
            }
        },
        craftItem() {
            fetch(`https://${GetParentResourceName()}/rsg-craft-item`, {
                method: 'POST',
                body: JSON.stringify({
                    craftable: this.activeCraftable,
                    quantity: this.quantity
                })
            }).then(resp => resp.json()).then(resp => {
                this.showInput = false;
                this.activeCraftable = null;
                this.quantity = 1;
            });
        },
        handleItemClick(data) {
            this.activeCraftable = data;
            this.showInput = true;
        },
        formatQuantity() {
            if (this.quantity <= this.min - 1) {
                this.quantity = this.min;
            }
            if (this.quantity > this.max) {
                this.quantity = this.max;
            }
        },
        increase() {
            let value = this.quantity;
            value = isNaN(value) ? this.min : value;
            if (value >= this.max) {
                value = this.max - 1;
            }
            value++;
            this.quantity = value;
        },
        decrease() {
            let value = this.quantity;
            value = isNaN(value) ? this.min : value;
            value < this.min ? value = this.min : '';
            value--;
            value < this.min ? value = this.min : '';
            this.quantity = value;
        },
        closeView() {
            this.visible = false;
            fetch(`https://${GetParentResourceName()}/rsg-craft-close`, {
                method: 'POST'
            });
        },
        setData(data) {
            this.categories = data.categories;
            this.consumables = data.consumables;
            this.crafttime = data.crafttime;
            this.language = data.language;
        }
    }
}).mount("#app");