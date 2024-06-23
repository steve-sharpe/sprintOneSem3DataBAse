CREATE TABLE public.purchase_item
(
    purchase_item_id integer NOT NULL,
    purchase_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity numeric NOT NULL,
    PRIMARY KEY (purchase_item_id)
);

ALTER TABLE IF EXISTS public.purchase_item
    OWNER to postgres;