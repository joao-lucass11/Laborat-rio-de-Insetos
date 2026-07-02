# ==========================================
# CLASSE COLETOR
# ==========================================
class Coletor:
    def __init__(self, id_coletor, nome, equipe, contato):
        self.id_coletor = id_coletor
        self.nome = nome
        self.equipe = equipe
        self.contato = contato


# ==========================================
# CLASSE LOCALIZAÇÃO
# ==========================================
class Localizacao:
    def __init__(self, id_local, nome_area, bioma, cidade,
                 latitude, longitude, altitude):
        self.id_local = id_local
        self.nome_area = nome_area
        self.bioma = bioma
        self.cidade = cidade
        self.latitude = latitude
        self.longitude = longitude
        self.altitude = altitude


# ==========================================
# CLASSE TAXONOMIA
# ==========================================
class Taxonomia:
    def __init__(self, id_taxonomia, ordem, familia, genero, especie):
        self.id_taxonomia = id_taxonomia
        self.ordem = ordem
        self.familia = familia
        self.genero = genero
        self.especie = especie


# ==========================================
# CLASSE COLETA
# ==========================================
class Coleta:
    def __init__(self, id_coleta, coletor, localizacao,
                 data_coleta, horario_coleta,
                 metodo, observacoes):

        self.id_coleta = id_coleta
        self.coletor = coletor
        self.localizacao = localizacao
        self.data_coleta = data_coleta
        self.horario_coleta = horario_coleta
        self.metodo = metodo
        self.observacoes = observacoes

    def exibir_coleta(self):
        print("=================================")
        print("         FICHA DE COLETA")
        print("=================================")
        print(f"ID Coleta   : {self.id_coleta}")
        print(f"Coletor     : {self.coletor.nome}")
        print(f"Área        : {self.localizacao.nome_area}")
        print(f"Bioma       : {self.localizacao.bioma}")
        print(f"Data        : {self.data_coleta}")
        print(f"Método      : {self.metodo}")
        print(f"Obs         : {self.observacoes}")
        print("=================================")


# ==========================================
# CLASSE INSETO
# ==========================================
class Inseto:
    def __init__(self, id_inseto, nome_popular,
                 estado_do_inseto, observacoes,
                 coleta, taxonomia):

        self.id_inseto = id_inseto
        self.nome_popular = nome_popular
        self.estado_do_inseto = estado_do_inseto
        self.observacoes = observacoes
        self.coleta = coleta
        self.taxonomia = taxonomia


# ==========================================
# CLASSE PESQUISADOR
# ==========================================
class Pesquisador:
    def __init__(self, id_pesquisador, nome, especialidade, contato):
        self.id_pesquisador = id_pesquisador
        self.nome = nome
        self.especialidade = especialidade
        self.contato = contato


# ==========================================
# CLASSE PESQUISA
# ==========================================
class Pesquisa:
    def __init__(self, id_pesquisa, titulo,
                 data_analise, objetivo_estudo,
                 resultado, pesquisador):

        self.id_pesquisa = id_pesquisa
        self.titulo = titulo
        self.data_analise = data_analise
        self.objetivo_estudo = objetivo_estudo
        self.resultado = resultado
        self.pesquisador = pesquisador

    def exibir_pesquisa(self):
        print("=================================")
        print("         FICHA DE PESQUISA")
        print("=================================")
        print(f"Título       : {self.titulo}")
        print(f"Pesquisador  : {self.pesquisador.nome}")
        print(f"Data         : {self.data_analise}")
        print(f"Resultado    : {self.resultado}")
        print("=================================")


# ==========================================
# RELAÇÃO PESQUISA-INSETO
# ==========================================
class PesquisaInseto:
    def __init__(self, pesquisa, inseto, observacao_analise):
        self.pesquisa = pesquisa
        self.inseto = inseto
        self.observacao_analise = observacao_analise


# ==========================================
# CRIAÇÃO DOS OBJETOS (TESTE)
# ==========================================

coletor = Coletor(1, "João Lucas", "Equipe Cerrado", "63-9999-0000")

local = Localizacao(1, "Área Experimental", "Cerrado",
                    "Lagoa da Confusão", -10.79, -49.62, 250)

taxonomia = Taxonomia(1, "Coleoptera", "Scarabaeidae", "Dynastes", "hercules")

coleta = Coleta(
    1,
    coletor,
    local,
    "2026-06-20",
    "08:30",
    "Rede entomológica",
    "Alta atividade de insetos"
)

inseto = Inseto(
    1,
    "Besouro-rinoceronte",
    "Vivo",
    "Encontrado em tronco de árvore",
    coleta,
    taxonomia
)

pesquisador = Pesquisador(1, "Mariana Costa", "Entomologia", "mariana@email.com")

pesquisa = Pesquisa(
    1,
    "Diversidade de insetos no Cerrado",
    "2026-06-25",
    "Analisar biodiversidade local",
    "Alta diversidade observada",
    pesquisador
)

relacao = PesquisaInseto(pesquisa, inseto, "Espécie relevante para estudo")


# ==========================================
# TESTE SIMPLES
# ==========================================

coleta.exibir_coleta()
pesquisa.exibir_pesquisa()