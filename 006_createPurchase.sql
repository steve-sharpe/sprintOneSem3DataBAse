CREATE TABLE public."Inventory"
(
    inventory_id integer NOT NULL,
    product_id integer NOT NULL,
    supplier_id integer NOT NULL,
    quantity_in_stock numeric NOT NULL DEFAULT 0,
    PRIMARY KEY (inventory_id)
);

ALTER TABLE IF EXISTS public."Inventory"
    OWNER to postgres;