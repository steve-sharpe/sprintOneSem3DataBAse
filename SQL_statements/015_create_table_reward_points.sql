CREATE TABLE public.reward_points
(
    reward_points_id integer NOT NULL,
    contact_id integer NOT NULL,
    points_earned numeric NOT NULL DEFAULT 0,
    points_redeemed numeric NOT NULL DEFAULT 0,
    PRIMARY KEY (reward_points_id)
);

ALTER TABLE IF EXISTS public.reward_points
    OWNER to postgres;