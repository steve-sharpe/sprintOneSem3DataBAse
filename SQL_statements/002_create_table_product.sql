CREATE TABLE public.product
(
    product_id integer NOT NULL,
    product_name character varying(50) NOT NULL,
    sell_price money NOT NULL,
    cost_price money NOT NULL,
    amount_in_stock numeric NOT NULL,
    PRIMARY KEY (product_id)
);

ALTER TABLE IF EXISTS public.product
    OWNER to postgres;