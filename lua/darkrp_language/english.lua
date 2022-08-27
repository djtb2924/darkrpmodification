--[[-------------------------------------------------------------------------
English (example) language file
-----------------------------------------------------------------------------
This is the english language file. The things on the left side of the equals sign are the things you should leave alone
The parts between the quotes are the parts you should translate. You can also copy this file and create a new language.

= Warning =
Sometimes when DarkRP is updated, new phrases are added.
If you don't translate these phrases to your language, it will use the English sentence.
To fix this, join your server, open your console and enter darkp_getphrases yourlanguage
For English the command would be:
    darkrp_getphrases "en"
because "en" is the language code for English.

You can copy the missing phrases to this file and translate them.

= Note =
Make sure the language code is right at the bottom of this file

= Using a language =
Make sure the convar gmod_language is set to your language code. You can do that in a server CFG file.
---------------------------------------------------------------------------]]

-- Copyright © LiveYourGame, 2021

local my_language = {
    -- Admin things
    need_admin = "Il faut être admin pour pouvoir %s",
    need_sadmin = "Il faut être superadmin pour pouvoir %s",
    no_privilege = "Vous n'avez pas le rang suffisant pour faire ceci",
    no_jail_pos = "Aucune prison existante",
    invalid_x = " Invalide %s ! %s",

    -- F1 menu
    f1ChatCommandTitle = "Commandes",
    f1Search = "Recherche...",

    -- Money things:
    price = "Prix : %s%d",
    priceTag = "Prix : %s",
    reset_money = "%s a reset l'argent !",
    has_given = "%s vous a donné %s",
    you_gave = "Vous avez donné %s à %s",
    npc_killpay = "%s pour avoir tué un NPC !",
    profit = "profit",
    loss = "perte",
    Donate = "Donnez",
    you_donated = "Vous avez donné %s à %s !",
    has_donated = "%s a donné %s !",

    -- backwards compatibility
    deducted_x = "Déduis %s%d",
    need_x = "Nécessite %s%d",

    deducted_money = "Déduits %s",
    need_money = "Nécessite %s",

    payday_message = "Votre paye : %s !",
    payday_unemployed = "Pas de paye : vous êtes au chômage !",
    payday_missed = "Pas de paye : vous êtes en prison !",

    property_tax = "Taxe de propriété : %s",
    property_tax_cant_afford = "Votre propriété a été saisie",
    taxday = "Impots : %s%% de vos revenus ont ete prélevés !",

    found_cheque = "Vous avez reçu %s%s de %s par chèque.",
    cheque_details = "Ce chèque est destine a %s.",
    cheque_torn = "Vous avez dechiré le chèque.",
    cheque_pay = "pour : %s",
    signed = "de : %s",

    found_cash = "Vous avez trouvé %s%d !", -- backwards compatibility
    found_money = "Vous avez trouvé %s !",

    owner_poor = "Le %s propriétaire est trop pauvre pour effectuer cette vente !",

    -- Police
    Wanted_text = "Recherché !",
    wanted = "Recherché par la police!\nRaison: %s",
    youre_arrested = "Vous avez été arrêté pour %d secondes !",
    youre_arrested_by = "Vous avez été arrêté par %s.",
    youre_unarrested_by = "Vous avez été libéré par %s.",
    hes_arrested = "%s a été arrêté pour %d secondes !",
    hes_unarrested = "%s a été remis en liberte !",
    warrant_ordered = "%s a obtenu un mandat de perquisition pour fouiller %s. Raison: %s",
    warrant_request = "%s reclame un mandat de perquisition pour fouiller %s\nRaison: %s",
    warrant_request2 = "Demande de mandat faite à %s!",
    warrant_approved = "Mandat de perquisition delivré pour %s!\nRaison: %s\nReclame par: %s",
    warrant_approved2 = "Vous pouvez procéder à la fouille.",
    warrant_denied = "Le maire %s a refusé le mandat.",
    warrant_expired = "Le mandat de perquisition pour %s a expiré !",
    warrant_required = "Vous devez avoir un mandat de perquisition.",
    warrant_required_unfreeze = "Vous devez avoir un mandat de perquisition.",
    warrant_required_unweld = "Vous devez avoir un mandat de perquisition.",
    wanted_by_police = "%s est recherché !\nRaison : %s\nOrdre de %s",
    wanted_by_police_print = "%s a ajouté %s sur la liste d'avis de recherche, raison : %s",
    wanted_expired = "%s n'est plus recherché.",
    wanted_revoked = "%s n'est plus recherché.\nOrdre de %s",
    cant_arrest_other_cp = "Vous ne pouvez pas arrêter un gendarme !",
    must_be_wanted_for_arrest = "Le joueur doit être recherché pour pouvoir être arrêté.",
    cant_arrest_fadmin_jailed = "Impossible d'arrêter le joueur, il est en jail.",
    cant_arrest_no_jail_pos = "Aucune place en prison",
    cant_arrest_spawning_players = "Impossible d'arrêter des joueurs au spawn.",

    suspect_doesnt_exist = "Le suspect n'existe pas.",
    actor_doesnt_exist = "L'acteur n'existe pas.",
    get_a_warrant = "Obtenir un mandat de perquisition",
    remove_a_warrant = "retirer un mandat",
    make_someone_wanted = "Rechercher une personne",
    remove_wanted_status = "Annulez la recherche",
    already_a_warrant = "Il y a deja un mandat de perquisition demande pour cette personne.",
    not_warranted = "There is no search warrant for this person.",
    already_wanted = "Le suspect est deja recherche.",
    not_wanted = "Le suspect n'est pas recherche.",
    need_to_be_cp = "Vous devez faire partie des forces de l'ordre.",
    suspect_must_be_alive_to_do_x = "Le suspect doit être en vie pour pouvoir %s.",
    suspect_already_arrested = "Le suspect est deja en prison.",

    -- Players
    health = "Vie : %s",
    job = "Métier : %s",
    salary = "Salaire : %s%s",
    wallet = "Argent : %s%s",
    weapon = "Arme : %s",
    kills = "Meurtres : %s",
    deaths = "Morts : %s",
    rpname_changed = "%s s'appelle désormais %s",
    disconnected_player = "Joueur déconnecté",
    player = "player",

    -- Teams
    need_to_be_before = "Vous devez être %s avant de devenir %s",
    need_to_make_vote = "Vous devez faire un vote pour devenir %s!",
    team_limit_reached = "Impossible de devenir %s. Ils sont déjà trop en ville.",
    wants_to_be = "%s\nsouhaite devenir\n%s",
    has_not_been_made_team = "%s n'est pas devenu %s!",
    job_has_become = "%s est devenu %s!",

    -- Disasters
    meteor_approaching = "ATTENTION: Tempête de météorites !",
    meteor_passing = "Tempete de météorite passée.",
    meteor_enabled = "Tempete de météorite activée.",
    meteor_disabled = "Tempete de météorite desactivée.",
    earthquake_report = "Séisme de magnitude %sMw",
    earthtremor_report = "Séisme de magnitude %sMw",

    -- Keys, vehicles and doors
    keys_allowed_to_coown = "Vous avez le droit d'être copropriétaire\n(Appuyez sur R avec les clés ou sur F2)\n",
    keys_other_allowed = "Droit de copropriété :",
    keys_allow_ownership = "(Appuyez sur R avec les clés ou sur F2 pour activer la  propriété)",
    keys_disallow_ownership = "(Appuyez sur R avec les clés ou F2 pour désactiver la propriété)",
    keys_owned_by = "Propriétaire :",
    keys_unowned = "Aucun propriétaire\n(Appuyez sur R avec les clés ou sur F2 pour devenir propriétaire)",
    keys_everyone = "(Appuyez sur R avec les clés ou sur F2)",
    door_unown_arrested = "Impossible de devenir propriétaire si vous avez été arrêté !",
    door_unownable = "Cette porte ne peut pas être achetée ni vendue !",
    door_sold = "Vous avez vendu cette porte pour %s",
    door_already_owned = "Cette porte appartient déjà a quelqu'un !",
    door_cannot_afford = "Vous n'avez pas assez pour acheter cette porte !",
    door_hobo_unable = "Vous ne pouvez pas avoir de porte en SDF !",
    vehicle_cannot_afford = "Vous n'avez pas assez pour acheter la voiture !",
    door_bought = "Vous avez acheté cette porte pour %s%s",
    vehicle_bought = "Vous avez obtenu les papiers du vehicule pour %s%s",
    door_need_to_own = "Vous devez etes propriétaire avant de pouvoir %s",
    door_rem_owners_unownable = "Impossible d'expulser des propriétaires si impossible d'acheter la propriété!",
    door_add_owners_unownable = "Impossible d'ajouter des propriétaires si impossible d'acheter la propriété!",
    rp_addowner_already_owns_door = "%s est deja propriétaire !",
    add_owner = "Ajouter un propriétaire",
    remove_owner = "Expulser un propriétaire",
    coown_x = "Partager la propriété %s",
    allow_ownership = "Autoriser possession",
    disallow_ownership = "Refuser possession",
    edit_door_group = "Modifier groupe propriétaire",
    door_groups = "Groupe de porte",
    door_group_doesnt_exist = "Groupe de porte inexistant !",
    door_group_set = "Groupe de porte appliqué.",
    sold_x_doors_for_y = "Vous avez vendu %d portes pour %s%d !", -- backwards compatibility
    sold_x_doors = "Vous avez vendu %d portes pour %s !",

    -- Entities
    drugs = "drogues",
    Drugs = "Drogues",
    drug_lab = "Labo de drogue",
    gun_lab = "Labo d'armes",
    any_lab = "Laboratoire",
    gun = "arme",
    microwave = "Micro-onde",
    food = "nourriture",
    Food = "Nourriture",
    money_printer = "Printer",
    tip_jar = "Boîte à tip",

    sign_this_letter = "Signer cette lettre",
    signed_yours = "Cordialement,",

    money_printer_exploded = "Votre printer a explosé !",
    money_printer_overheating = "Votre printer a surchauffé !",

    contents = "Contenu : ",
    amount = "Quantité : ",

    picking_lock = "Crochetage de la serrure",

    cannot_pocket_x = "Vous ne pouvez pas mettre ceci dans vos poches !",
    cannot_pocket_gravgunned = "You cannot put this in your pocket: it is being held by a gravgun.",
    object_too_heavy = "Cet objet est trop lourd.",
    pocket_full = "Vos poches sont pleines !",
    pocket_no_items = "Vous n'avez rien dans vos poches.",
    drop_item = "Lâcher un objet",
    bonus_destroying_entity = "avoir détruit cette entité illégale.",

    switched_burst = "Passé en mode rafale.",
    switched_fully_auto = "Passé en mode automatique.",
    switched_semi_auto = "Passé en mode semi-automatique.",

    keypad_checker_shoot_keypad = "Tirez sur un keypad pour voir ce qu'il contrôle.",
    keypad_checker_shoot_entity = "Tirez sur une entité pour voir quels keypads y sont connectés",
    keypad_checker_click_to_clear = "Clic droit pour effacer.",
    keypad_checker_entering_right_pass = "Quand bon mot de passe",
    keypad_checker_entering_wrong_pass = "Quand mauvais mot de passe",
    keypad_checker_after_right_pass = "après avoir entré le bon mot de passe",
    keypad_checker_after_wrong_pass = "après avoir entré le mauvais mot de passe",
    keypad_checker_right_pass_entered = "Mot de passe correct saisi",
    keypad_checker_wrong_pass_entered = "Mot de passe incorrect saisi",
    keypad_checker_controls_x_entities = "Ce keypad contrôle %d entités",
    keypad_checker_controlled_by_x_keypads = "Cette entité est contrôlée par %d keypads",
    keypad_on = "ON",
    keypad_off = "OFF",
    seconds = "secondes",

    persons_weapons = "Les armes illégales de %s:",
    returned_persons_weapons = "Armes illégales de %s rendues.",
    no_weapons_confiscated = "Aucune arme de %s n'a été confisquée !",
    no_illegal_weapons = "%s n'a aucune arme illégale.",
    confiscated_these_weapons = "Confiscation des armes :",
    checking_weapons = "Fouille a corps",

    shipment_antispam_wait = "Patientez avant de générer une autre caisse.",
    createshipment = "Créer une caisse",
    splitshipment = "Diviser cette caisse",
    shipment_cannot_split = "Impossible de diviser cette caisse.",

    -- Talking
    hear_noone = "Personne ne peut vous entendre %s !",
    hear_everyone = "Tout le monde peut vous entendre !",
    hear_certain_persons = "",

    whisper = "chuchotement",
    yell = "Cri",
    broadcast = "[Annonce]",
    radio = "radio",
    request = "(Plainte)",
    group = "(groupe)",
    demote = "(Licenciement)",
    ooc = "HRP",
    radio_x = "Radio %d",

    talk = "parler",
    speak = "parler",

    speak_in_ooc = "parler en HRP",
    perform_your_action = "faire une action",
    talk_to_your_group = "parler au groupe",

    channel_set_to_x = "Canal changé pour %s !",
    channel = "canal",

    -- Notifies
    disabled = "%s a été desactivé ! %s",
    gm_spawnvehicle = "Le spawn de voitures",
    gm_spawnsent = "Le spawn d'entités",
    gm_spawnnpc = "Le spawn de NPC",
    see_settings = "Voir les paramètres de DarkRP.",
    limit = "Vous avez atteint la limite de %s !",
    have_to_wait = "Vous devez attendre %d secondes avant d'utiliser %s !",
    must_be_looking_at = "Vous devez regardez %s!",
    incorrect_job = "Vous n'avez pas le bon metier pour %s",
    unavailable = "Cet %s n'est pas disponible",
    unable = "Impossible de %s. %s",
    cant_afford = "Vous n'avez pas assez d'argent pour %s",
    created_x = "%s a créé un %s",
    cleaned_up = "Vos %s ont ete supprimées.",
    you_bought_x = "Vous avez acheté %s pour %s%d.", -- backwards compatibility
    you_bought = "Vous avez acheté %s pour %s.",
    you_got_yourself = "Vous vous avez un %s.",
    you_received_x = "Vous avez reçu %s pour %s.",

    created_first_jailpos = "Vous avez créé la première prison !",
    added_jailpos = "Vous avez ajouté une nouvelle prison !",
    reset_add_jailpos = "Vous avez supprimé toutes les prisons et vous en avez créé une ici.",
    created_spawnpos = "Vous avez ajouté un spawn pour %s.",
    updated_spawnpos = "Vous avez supprimé tous les spawn pour %s et vous en avez créé un ici.",
    remove_spawnpos = "Vous avez supprimé tous les spawn pour %s.",
    do_not_own_ent = "Vous ne possédez pas cette entité !",
    cannot_drop_weapon = "Impossible de jeter cette arme !",
    job_switch = "Les métier ont été inversés avec succès !",
    job_switch_question = "Inversez de métier avec %s ?",
    job_switch_requested = "Inversement de métier demandé.",
    switch_jobs = "inversez de métier",

    cooks_only = "Cuisiniers seulement.",

    -- Misc
    unknown = "Inconnu",
    arguments = "arguments",
    no_one = "personne",
    door = "porte",
    vehicle = "voiture",
    door_or_vehicle = "porte/véhicule",
    driver = "Conducteur : %s",
    name = "Nom : %s",
    locked = "Verrouillé.",
    unlocked = "Déverrouillé.",
    player_doesnt_exist = "Le joueur n'existe pas.",
    job_doesnt_exist = "Le métier n'existe pas !",
    must_be_alive_to_do_x = "Vous devez être vivant pour %s.",
    banned_or_demoted = "Banni/licencié",
    wait_with_that = "Attendez avec ça.",
    could_not_find = "Impossible de trouver %s",
    f3tovote = "Appuyez F3 pour voter",
    listen_up = "Écoutez :", -- In rp_tell or rp_tellall
    nlr = "New Life Rule: Nouvelle vie, aucun souvenirs.",
    reset_settings = "Vous avez réinitialisé tous les paramètres!",
    must_be_x = "Vous devez être un %s pour pouvoir %s.",
    agenda = "agenda",
    agenda_updated = "L'agenda a été mis à jour",
    job_set = "%s a défini son travail pour '%s'",
    demote_vote = "licenciement",
    demoted = "%s a été licencié",
    demoted_not = "%s n'a pas été licencié",
    demote_vote_started = "%s a commencé à voter pour le licenciement de %s",
    demote_vote_text = "Raison : \n%s", -- '%s' is the reason here
    cant_demote_self = "Il est préférable de démissionner.",
    i_want_to_demote_you = "Je veux ton licenciement. Raison : %s",
    tried_to_avoid_demotion = "Petit malin.", -- naughty boy!
    lockdown_started = "Couvre-feu lancé, restez chez vous !",
    lockdown_ended = "Couvre-feu terminé, bonne journée",
    gunlicense_requested = "%s a demandé une licence d'armes à %s",
    gunlicense_granted = "%s a accepté une licence d'armes à %s",
    gunlicense_denied = "%s a refusé la licence d'armes de %s",
    gunlicense_question_text = "Delivrer une licence d'armes à %s ?",
    gunlicense_remove_vote_text = "%s a commencé à voter pour le retrait de licence de %s",
    gunlicense_remove_vote_text2 = "Raison :\n%s", -- Where %s is the reason
    gunlicense_removed = "La licence d'armes de %s a été revoquée !",
    gunlicense_not_removed = "La licence d'armes de %s n'a pas été revoquée !",
    vote_specify_reason = "Vous devez donner une raison !",
    vote_started = "Le vote a été créé",
    vote_alone = "Vous avez gagné le vote, en même temps, vous êtes seul.",
    you_cannot_vote = "Vous ne pouvez pas voter !",
    x_cancelled_vote = "%s a annulé le dernier vote.",
    cant_cancel_vote = "Impossible d'annuler le dernier vote car il n'y a pas eu de dernier vote à annuler !",
    jail_punishment = "Deconnexion en prison ! Temps restant : %d secondes.",
    admin_only = "Vous n'êtes pas administrateur", -- When doing /addjailpos
    chief_or = "Vous n'êtes pas maire",-- When doing /addjailpos
    frozen = "Freeze.",
    recipient = "destinataire",
    forbidden_name = "Nom RP interdit.",
    illegal_characters = "Caractères invalides.",
    too_long = "Trop long.",
    too_short = "Trop court.",

    dead_in_jail = "Vous serez mort pour le reste de votre peine !",
    died_in_jail = "%s est mort en prison !",

    credits_for = "CREDITS POUR %s\n",
    credits_see_console = "Les crédits de DarkRP sont dans la console.",

    rp_getvehicles = "Véhicules disponibles pour les véhicules personnalisés :",

    data_not_loaded_one = "Vos données n'ont pas encore été chargées. S'il vous plaît, attendez",
    data_not_loaded_two = "Si cela persiste, essayez de retry ou de contacter le fondateur.",

    cant_spawn_weapons = "Vous ne pouvez pas faire spawn d'armes.",
    drive_disabled = "Fonctionnalité desactivée",
    property_disabled = "Fonctionnalité desactivée",

    not_allowed_to_purchase = "Vous n'êtes pas autorisé à acheter cet objet.",

    rp_teamban_hint = "rp_teamban [Nom / ID] [Métier / id]. Utilisez ça pour ban quelqu'un d'un métier.",
    rp_teamunban_hint = "rp_teamunban [Nom / ID] [Métier / id]. Utilisez ça pour déban quelqu'un d'un métier.",
    x_teambanned_y_for_z = "%s a banni %s du métier %s pour %s minute.",
    x_teamunbanned_y = "%s a débanni %s du métier %s.",

    -- Backwards compatibility:
    you_set_x_salary_to_y = "Vous avez fixé le salaire de %s a %s%d.",
    x_set_your_salary_to_y = "%s a fixé votre salaire a %s%d.",
    you_set_x_money_to_y = "Vous avez fixé l'argent de %s a %s%d.",
    x_set_your_money_to_y = "%s a fixé votre argent a %s%d.",

    you_set_x_salary = "Vous avez fixé le salaire de %s a %s.",
    x_set_your_salary = "%s a fixé votre salaire à %s.",
    you_set_x_money = "Vous avez fixé l'argent de %s a %s.",
    x_set_your_money = "%s a fixé votre agent à %s.",
    you_set_x_name = "Vous avez changé le nom de %s en %s",
    x_set_your_name = "%s a changé votre nom en %s",

    someone_stole_steam_name = "Quelqu'un utilise votre nom Steam comme Nom RP, merci de changer de nom.", -- Uh oh
    already_taken = "Déjà pris.",

    job_doesnt_require_vote_currently = "Ce métier ne nécessite pas de vote pour le moment!",

    x_made_you_a_y = "%s vous a fait %s!",

    cmd_cant_be_run_server_console = "Cette commande ne peut pas être effectuée a partir de la console.",

    -- The lottery
    lottery_started = "Lotterie ! Participez-y pour %s%d ?", -- backwards compatibility
    lottery_has_started = "Lotterie ! Participez-y pour %s ?",
    lottery_entered = "Vous participez à la lotterie pour %s",
    lottery_not_entered = "%s ne participe pas à la lotterie",
    lottery_noone_entered = "Personne n'a participé à la lotterie",
    lottery_won = "%s a gagné le jackpot :  %s !",
    lottery = "lotterie",
    lottery_please_specify_an_entry_cost = "Merci d'entrer le prix du billet ($%i-%i)",
        too_few_players_for_lottery = "There are too few players to start a lottery. There need to be at least %d players",
    lottery_ongoing = "Cannot start a lottery, there is already a lottery ongoing",

    -- Animations
    custom_animation = "Animations",
    bow = "Révérence",
    sexy_dance = "Sexy dance",
    follow_me = "Suis-moi !",
    laugh = "Rire",
    lion_pose = "Pause de lion",
    nonverbal_no = "Non non non",
    thumbs_up = "Pouce bleu",
    wave = "Salut !",
    dance = "Dance",

    -- Hungermod
    starving = "Affamé !",

    -- AFK
    afk_mode = "Mode AFK",
    unable_afk_spam_prevention = "Attendez avant de redevenir AFK.",
    salary_frozen = "Vous ne gagnez rien.",
    salary_restored = "Bon retour parmis nous !",
    no_auto_demote = "Vous ne serez pas licencié automatiquement.",
    youre_afk_demoted = "Vous avez été licencié pour avoir été AFK trop longtemps. La prochaine fois, utilisez /afk.",
    hes_afk_demoted = "%s a été licencié pour avoir été AFK trop longtemps.",
    afk_cmd_to_exit = "Entrez /afk pour revenir dans le RP.",
    player_now_afk = "%s est maintenant AFK.",
    player_no_longer_afk = "%s n'est plus AFK.",

    -- Hitmenu
    hit = "assassinat",
    hitman = "Tueur à gages",
    current_hit = "Cible : %s",
    cannot_request_hit = "Impossible de demander l'assassinat ! %s",
    hitmenu_request = "Demande",
    player_not_hitman = "Ce joueur n'est pas un tueur à gages !",
    distance_too_big = "Distance trop grande.",
    hitman_no_suicide = "Le tueur à gages ne se suicidera pas.",
    hitman_no_self_order = "Vous ne pouvez pas faire cela.",
    hitman_already_has_hit = "Le tueur à gages a déjà un coup en cours.",
    price_too_low = "Prix trop bas !",
    hit_target_recently_killed_by_hit = "La cible a récemment été assassinée,",
    customer_recently_bought_hit = "Le client a récemment demandé un assassinat",
    accept_hit_question = "Accepter le contrat de %s\nvisant %s pour %s%d?", -- backwards compatibility
    accept_hit_request = "Accepter le contrat de %s\nvisant %s pour %s?",
    hit_requested = "Assassinat demandée !",
    hit_aborted = "Assassinat annulé ! %s",
    hit_accepted = "Assassinat accepté !",
    hit_declined = "Le tueur à gages a refusé le contrat !",
    hitman_left_server = "Le tueur à gages a quitté la ville !",
    customer_left_server = "Le client a quitté la ville !",
    target_left_server = "La cible a quitté la ville !",
    hit_price_set_to_x = "Prix défini à %s%d.", -- backwards compatibility
    hit_price_set = "Prix défini  %s.",
    hit_complete = "Assassinat par %s réussi !",
    hitman_died = "Le tueur à gages est mort !",
    target_died = "La cible est morte !",
    hitman_arrested = "Le tueur à gages a été arrêté !",
    hitman_changed_team = "Le tueur à gages a changé de métier !",
    x_had_hit_ordered_by_y = "%s avait un contrat assassinat demandé par %s",
    place_a_hit = "demander un assassinat !",
    hit_cancel = "hit cancellation!",
    hit_cancelled = "The hit was cancelled!",
    no_active_hit = "You have no active hit!",

    -- Vote Restrictions
    hobos_no_rights = "Vous avez perdu votre carte électorale !",
    gangsters_cant_vote_for_government = "Les gangsters ne peuvent pas voter pour ça !",
    government_cant_vote_for_gangsters = "Les fonctionnaires ne peuvent pas voter pour ça !",

    -- VGUI and some more doors/vehicles
    vote = "Vote",
    time = "Temps : %d",
    yes = "Oui",
    no = "Non",
    ok = "Ok",
    cancel = "Annuler",
    add = "Ajouter",
    remove = "Supprimer",
    none = "Rien",

    x_options = "options de %s",
    sell_x = "Vendre %s",
    set_x_title = "Definir le titre de la %s",
    set_x_title_long = "Definir le nom de la %s que vous regardez.",
    jobs = "Metiers",
    buy_x = "Acheter %s",

    -- F4menu
    ammo = "munitions",
    weapon_ = "arme",
    no_extra_weapons = "Ce métier n'a pas d'armes.",
    become_job = "Choisir",
    create_vote_for_job = "Créer un vote",
    shipment = "caisse",
    Shipments = "Caisses",
    shipments = "caisses",
    F4guns = "Armes",
    F4entities = "Divers",
    F4ammo = "Munitions",
    F4vehicles = "Véhicules",

    -- Tab 1
    give_money = "Donner de l'argent à la personne que vous regardez",
    drop_money = "Déposer de l'argent",
    change_name = "Changer votre nom RP",
    go_to_sleep = "Dormir / Se reveiller",
    drop_weapon = "Déposer votre arme actuelle",
    buy_health = "Acheter de la vie (%s)",
    request_gunlicense = "Demander une licence d'arme",
    demote_player_menu = "Licencier un joueur",

    searchwarrantbutton = "Faire un mandat d'arrêt",
    unwarrantbutton = "Retirer un mandat d'arrêt",
    noone_available = "Personne disponible",
    request_warrant = "Faire un mandat de perquisition",
    make_wanted = "Faire un mandat d'arrêt",
    make_unwanted = "Retirer un mandat d'arrêt",
    set_jailpos = "Faire une prison ici",
    add_jailpos = "Ajouter une prison ici",

    set_custom_job = "Changer le nom de votre métier",

    set_agenda = "Definir l'agenda",

    initiate_lockdown = "Initier un couvre-feu",
    stop_lockdown = "Arrêtez le couvre-feu",
    start_lottery = "Lancer une loterie",
    give_license_lookingat = "Delivrer une licence d'arme <lookingat>",

    laws_of_the_land = "LOIS DE LA VILLE",
    law_added = "Loi ajoutée.",
    law_removed = "Loi supprimée.",
    law_reset = "Lois supprimées.",
    law_too_short = "Loi trop courte.",
    laws_full = "Trop de lois.",
    default_law_change_denied = "Vous ne pouvez pas changer les lois de base.",

    -- Second tab
    job_name = "Nom : ",
    job_description = "Description : ",
    job_weapons = "Armes : ",

    -- Entities tab
    buy_a = "Acheter %s: %s",

    -- Licenseweaponstab
    license_tab = [[Armes sans licence :

    Cochez les armes qui ne nécessite PAS de licence !
    ]],
    license_tab_other_weapons = "Autres armes :",

    zombie_spawn_removed = "You have removed this zombie spawn.",
    zombie_spawn = "Zombie Spawn",
    zombie_disabled = "Zombies are now disabled.",
    zombie_enabled = "Zombies are now enabled.",
    zombie_maxset = "Maximum amount of zombies is now set to %s",
    zombie_spawn_added = "You have added a zombie spawn.",
    zombie_spawn_not_exist = "Zombie Spawn %s does not exist.",
    zombie_leaving = "Zombies are leaving.",
    zombie_approaching = "WARNING: Zombies are approaching!",
    zombie_toggled = "Zombies toggled.",
}

-- The language code is usually (but not always) a two-letter code. The default language is "en".
-- Other examples are "nl" (Dutch), "de" (German)
-- If you want to know what your language code is, open GMod, select a language at the bottom right
-- then enter gmod_language in console. It will show you the code.
-- Make sure language code is a valid entry for the convar gmod_language.
DarkRP.addLanguage("en", my_language)
