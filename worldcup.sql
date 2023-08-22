--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (16, 2018, 'Final', 153, 154, 4, 2);
INSERT INTO public.games VALUES (17, 2018, 'Third Place', 155, 156, 2, 0);
INSERT INTO public.games VALUES (18, 2018, 'Semi-Final', 154, 156, 2, 1);
INSERT INTO public.games VALUES (19, 2018, 'Semi-Final', 153, 155, 1, 0);
INSERT INTO public.games VALUES (20, 2018, 'Quarter-Final', 154, 157, 3, 2);
INSERT INTO public.games VALUES (21, 2018, 'Quarter-Final', 156, 158, 2, 0);
INSERT INTO public.games VALUES (22, 2018, 'Quarter-Final', 155, 159, 2, 1);
INSERT INTO public.games VALUES (23, 2018, 'Quarter-Final', 153, 160, 2, 0);
INSERT INTO public.games VALUES (24, 2018, 'Eighth-Final', 156, 161, 2, 1);
INSERT INTO public.games VALUES (25, 2018, 'Eighth-Final', 158, 162, 1, 0);
INSERT INTO public.games VALUES (26, 2018, 'Eighth-Final', 155, 163, 3, 2);
INSERT INTO public.games VALUES (27, 2018, 'Eighth-Final', 159, 164, 2, 0);
INSERT INTO public.games VALUES (28, 2018, 'Eighth-Final', 154, 165, 2, 1);
INSERT INTO public.games VALUES (29, 2018, 'Eighth-Final', 157, 166, 2, 1);
INSERT INTO public.games VALUES (30, 2018, 'Eighth-Final', 160, 167, 2, 1);
INSERT INTO public.games VALUES (31, 2018, 'Eighth-Final', 153, 168, 4, 3);
INSERT INTO public.games VALUES (32, 2014, 'Final', 169, 168, 1, 0);
INSERT INTO public.games VALUES (33, 2014, 'Third Place', 170, 159, 3, 0);
INSERT INTO public.games VALUES (34, 2014, 'Semi-Final', 168, 170, 1, 0);
INSERT INTO public.games VALUES (35, 2014, 'Semi-Final', 169, 159, 7, 1);
INSERT INTO public.games VALUES (36, 2014, 'Quarter-Final', 170, 171, 1, 0);
INSERT INTO public.games VALUES (37, 2014, 'Quarter-Final', 168, 155, 1, 0);
INSERT INTO public.games VALUES (38, 2014, 'Quarter-Final', 159, 161, 2, 1);
INSERT INTO public.games VALUES (39, 2014, 'Quarter-Final', 169, 153, 1, 0);
INSERT INTO public.games VALUES (40, 2014, 'Eighth-Final', 159, 172, 2, 1);
INSERT INTO public.games VALUES (41, 2014, 'Eighth-Final', 161, 160, 2, 0);
INSERT INTO public.games VALUES (42, 2014, 'Eighth-Final', 153, 173, 2, 0);
INSERT INTO public.games VALUES (43, 2014, 'Eighth-Final', 169, 174, 2, 1);
INSERT INTO public.games VALUES (44, 2014, 'Eighth-Final', 170, 164, 2, 1);
INSERT INTO public.games VALUES (45, 2014, 'Eighth-Final', 171, 175, 2, 1);
INSERT INTO public.games VALUES (46, 2014, 'Eighth-Final', 168, 162, 1, 0);
INSERT INTO public.games VALUES (47, 2014, 'Eighth-Final', 155, 176, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (153, 'France');
INSERT INTO public.teams VALUES (154, 'Croatia');
INSERT INTO public.teams VALUES (155, 'Belgium');
INSERT INTO public.teams VALUES (156, 'England');
INSERT INTO public.teams VALUES (157, 'Russia');
INSERT INTO public.teams VALUES (158, 'Sweden');
INSERT INTO public.teams VALUES (159, 'Brazil');
INSERT INTO public.teams VALUES (160, 'Uruguay');
INSERT INTO public.teams VALUES (161, 'Colombia');
INSERT INTO public.teams VALUES (162, 'Switzerland');
INSERT INTO public.teams VALUES (163, 'Japan');
INSERT INTO public.teams VALUES (164, 'Mexico');
INSERT INTO public.teams VALUES (165, 'Denmark');
INSERT INTO public.teams VALUES (166, 'Spain');
INSERT INTO public.teams VALUES (167, 'Portugal');
INSERT INTO public.teams VALUES (168, 'Argentina');
INSERT INTO public.teams VALUES (169, 'Germany');
INSERT INTO public.teams VALUES (170, 'Netherlands');
INSERT INTO public.teams VALUES (171, 'Costa Rica');
INSERT INTO public.teams VALUES (172, 'Chile');
INSERT INTO public.teams VALUES (173, 'Nigeria');
INSERT INTO public.teams VALUES (174, 'Algeria');
INSERT INTO public.teams VALUES (175, 'Greece');
INSERT INTO public.teams VALUES (176, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 47, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 176, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk__games_teams__opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk__games_teams__opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk__games_teams__winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk__games_teams__winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

