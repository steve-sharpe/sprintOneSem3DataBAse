CREATE TABLE public.purchase
(
    purchase_id integer NOT NULL,
    supplier_id integer NOT NULL,
    purchase_date date NOT NULL,
    total_cost money NOT NULL DEFAULT 0,
    delivery_id integer NOT NULL,
    PRIMARY KEY (purchase_id)
);

ALTER TABLE IF EXISTS public.purchase
    OWNER to postgres;