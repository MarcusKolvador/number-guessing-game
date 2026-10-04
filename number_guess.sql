--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses_amount integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (22, 21, 827);
INSERT INTO public.games VALUES (23, 22, 633);
INSERT INTO public.games VALUES (24, 21, 979);
INSERT INTO public.games VALUES (25, 21, 433);
INSERT INTO public.games VALUES (26, 21, 278);
INSERT INTO public.games VALUES (27, 24, 254);
INSERT INTO public.games VALUES (28, 25, 121);
INSERT INTO public.games VALUES (29, 24, 289);
INSERT INTO public.games VALUES (30, 24, 476);
INSERT INTO public.games VALUES (31, 24, 346);
INSERT INTO public.games VALUES (32, 23, 2);
INSERT INTO public.games VALUES (33, 23, 1);
INSERT INTO public.games VALUES (34, 23, 1);
INSERT INTO public.games VALUES (35, 26, 265);
INSERT INTO public.games VALUES (36, 27, 301);
INSERT INTO public.games VALUES (37, 26, 468);
INSERT INTO public.games VALUES (38, 26, 998);
INSERT INTO public.games VALUES (39, 26, 79);
INSERT INTO public.games VALUES (40, 28, 848);
INSERT INTO public.games VALUES (41, 29, 164);
INSERT INTO public.games VALUES (42, 28, 263);
INSERT INTO public.games VALUES (43, 28, 335);
INSERT INTO public.games VALUES (44, 28, 246);
INSERT INTO public.games VALUES (45, 31, 289);
INSERT INTO public.games VALUES (46, 31, 811);
INSERT INTO public.games VALUES (47, 32, 500);
INSERT INTO public.games VALUES (48, 32, 573);
INSERT INTO public.games VALUES (49, 31, 374);
INSERT INTO public.games VALUES (50, 31, 857);
INSERT INTO public.games VALUES (51, 31, 505);
INSERT INTO public.games VALUES (52, 33, 956);
INSERT INTO public.games VALUES (53, 33, 790);
INSERT INTO public.games VALUES (54, 34, 726);
INSERT INTO public.games VALUES (55, 34, 713);
INSERT INTO public.games VALUES (56, 33, 184);
INSERT INTO public.games VALUES (57, 33, 732);
INSERT INTO public.games VALUES (58, 33, 948);
INSERT INTO public.games VALUES (59, 35, 785);
INSERT INTO public.games VALUES (60, 35, 959);
INSERT INTO public.games VALUES (61, 36, 620);
INSERT INTO public.games VALUES (62, 36, 71);
INSERT INTO public.games VALUES (63, 35, 844);
INSERT INTO public.games VALUES (64, 35, 425);
INSERT INTO public.games VALUES (65, 35, 768);
INSERT INTO public.games VALUES (66, 37, 65);
INSERT INTO public.games VALUES (67, 37, 360);
INSERT INTO public.games VALUES (68, 38, 934);
INSERT INTO public.games VALUES (69, 38, 398);
INSERT INTO public.games VALUES (70, 37, 309);
INSERT INTO public.games VALUES (71, 37, 114);
INSERT INTO public.games VALUES (72, 37, 536);
INSERT INTO public.games VALUES (73, 39, 386);
INSERT INTO public.games VALUES (74, 39, 622);
INSERT INTO public.games VALUES (75, 40, 892);
INSERT INTO public.games VALUES (76, 40, 660);
INSERT INTO public.games VALUES (77, 39, 788);
INSERT INTO public.games VALUES (78, 39, 311);
INSERT INTO public.games VALUES (79, 39, 289);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (21, 'user_1791119870126');
INSERT INTO public.users VALUES (22, 'user_1791119870125');
INSERT INTO public.users VALUES (23, 'Marcus');
INSERT INTO public.users VALUES (24, 'user_1791120021075');
INSERT INTO public.users VALUES (25, 'user_1791120021074');
INSERT INTO public.users VALUES (26, 'user_1791120120713');
INSERT INTO public.users VALUES (27, 'user_1791120120712');
INSERT INTO public.users VALUES (28, 'user_1791120194457');
INSERT INTO public.users VALUES (29, 'user_1791120194456');
INSERT INTO public.users VALUES (30, 'John');
INSERT INTO public.users VALUES (31, 'user_1791120315320');
INSERT INTO public.users VALUES (32, 'user_1791120315319');
INSERT INTO public.users VALUES (33, 'user_1791120448232');
INSERT INTO public.users VALUES (34, 'user_1791120448231');
INSERT INTO public.users VALUES (35, 'user_1791120733814');
INSERT INTO public.users VALUES (36, 'user_1791120733813');
INSERT INTO public.users VALUES (37, 'user_1791120815132');
INSERT INTO public.users VALUES (38, 'user_1791120815131');
INSERT INTO public.users VALUES (39, 'user_1791120838680');
INSERT INTO public.users VALUES (40, 'user_1791120838679');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 79, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 40, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

