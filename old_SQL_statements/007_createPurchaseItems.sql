CREATE TABLE public."Purchase-Item"
(
    purchase_item_id integer NOT NULL,
    purchase_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity numeric NOT NULL,
    revenue_per_item money NOT NULL,
    PRIMARY KEY (purchase_item_id)
);

ALTER TABLE IF EXISTS public."Purchase-Item"
    OWNER to postgres;