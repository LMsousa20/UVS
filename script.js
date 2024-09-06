let dia = new Date();
let StringDia = dia.getDate();
let StringMes = dia.getMonth() + 1;
let ano = dia.getYear();
let hour = dia.getHours();
let vl1 = StringDia * 100 + StringMes;
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
let preValor;
let tech = ''
let sitTech = false

if( localStorage.getItem("cacheTech") === "true"){
  sitTech = true
  document.getElementById("meuCheckbox").checked = 'true'
  rendTechSpace()      
}else {
  document.getElementById('techSpace').style.display = 'none';
  localStorage.setItem("cacheTech", "false")
}

document.getElementById("meuCheckbox").addEventListener("change", function () {
  if (this.checked) {
    console.log("O checkbox foi marcado.");
    sitTech = true

    if (Number(localStorage.getItem("cdg1")) == 0) {
      let codigo = Number(prompt("Qual seu Codigo?"));
      localStorage.setItem("cdg1", codigo);
      rendTechSpace()      
      
    } else {
      rendTechSpace()
      
    }
    localStorage.setItem("cacheTech", "true")
    
  } else {
    console.log("O checkbox foi desmarcado.");
    sitTech = false
    document.getElementById('techSpace').style.display = 'none';
    localStorage.setItem("cacheTech", "false")
  }
});

console.log(sitTech)

function inCodigo() {
  console.log('entrou na senha')
  if (Number(localStorage.getItem("cdg1")) == 0 && sitTech === true) {
    let codigo = Number(prompt("Qual seu Codigo?"));
    localStorage.setItem("cdg1", codigo);
  } 
}

function rendTechSpace(){
  document.getElementById('techSpace').style.display = 'block';
  // Senha do sistem
  
  let codigoUser = localStorage.getItem("cdg1");
  preValor = (vl1 / codigoUser) * 10000;
  
  
  // Imprimir a data
  if (StringMes <= 9) {
    document.getElementById("data").innerHTML = `${StringDia}/0${StringMes}`;
  } else {
    document.getElementById("data").innerHTML = `${StringDia}/${StringMes}`;
  }
  document.getElementById("result").innerHTML = parseInt(preValor);
  // Calculo da companytec
}
  function CalcCompanytec() {
    let companytec = ano - StringMes - StringDia - hour + 1900;
    document.getElementById("cmptc").innerHTML = companytec;
  }
  // Cosseno - Calculo da Eztech
  function cosseno() {
    let cdgEztech = document.getElementById("inEztech").value;
    if (cdgEztech == 0) {
      return;
    }
    let senhaEztech = parseInt(Math.cos(Number(cdgEztech)) * 1000);
    console.log(senhaEztech);
    if (senhaEztech < 0) {
      senhaEztech = senhaEztech * -1;
    }
    document.getElementById(
      "resulteztc"
    ).innerHTML = `<p>Senha do Eztech</p><div class="subdiv move">${senhaEztech}</div>`;
  }
  
  function zap() {
    console.log('fudeu')
    let cdgZap = document.getElementById("inZap").value;
    console.log(typeof cdgZap);
    console.log(cdgZap);
    var numzap = cdgZap.replaceAll("-", "");
    var numzap1 = numzap.replaceAll(" ", "");
    var numzap2 = numzap1.replaceAll("(", "");
  var numzap3 = numzap2.replaceAll(")", "");
  var numFinal = numzap3.replaceAll("+", "");
  console.log(typeof numFinal);
  console.log(numFinal);

  document.getElementById("inZap").value = numFinal;

  document.getElementById("btnZap").innerHTML = `
    <a href="https://api.whatsapp.com/send/?phone=%2B${numFinal}">
    <input class="subdiv move btn btn-primary" target="_blank" type="button" value="WhatsApp"></input>
    </a>
    `;
}

CalcCompanytec()

function zeracdg() {
  localStorage.setItem("cdg1", "0")
  let codigo = Number(prompt("Qual seu Codigo?"));
  localStorage.setItem("cdg1", codigo);
  location.reload();

}