import React, { useEffect, useState } from 'react';
import Urbit from '@urbit/http-api';
import { Charges, ChargeUpdateInitial, scryCharges } from '@urbit/api';
import { AppTile } from './components/AppTile';
import Calendar from 'react-awesome-calendar';

const api = new Urbit('', '', window.desk);
api.ship = window.ship;

const testEntry = {
	'action' : 'add-entry',
	'params' : {
		'title': 'testtitle', 
		'desc':'testdesc', 
		'resids': [],
		'permissions' : [],
		'categories' : [],
		'modified' : 'date',
		'type' : {}
	},
};

const events = [{
    id: 1,
    color: '#fd3153',
    from: '2022-03-07T18:00:00+00:00',
    to: '2022-03-07T19:00:00+00:00',
    title: 'This is an event'
}, {
    id: 2,
    color: '#1ccb9e',
    from: '2022-03-07T18:00:00+00:00',
    to: '2022-03-07T19:00:00+00:00',
    title: 'This is another event'
}, {
    id: 3,
    color: '#3694DF',
    from: '2019-05-05T13:00:00+00:00',
    to: '2019-05-05T20:00:00+00:00',
    title: 'This is also another event'
}];

const calendarClick = (event : any) => {
	console.log(event);
}

export function App() {
  /* const [apps, setApps] = useState<Charges>(); */

  useEffect(() => {
    async function init() {
      /* const charges = (await api.scry<ChargeUpdateInitial>(scryCharges)).initial; */

			const handle = (param: any) => {console.log('param: ' + param)};
			const onSuccess = () => {console.log('onSuccess')};
			const onError = () => {console.log('onError')};

      /* const sub = await api.subscribe({app: 'org', path:'/updates', err: handle, event:handle, quit:handle}); */
			/* const add = await api.poke({onSuccess, onError, app: 'org', mark:'org-action', json: {'title': 'testtitle', 'desc': 'testdesc', permissions: null}}); */
			/* const add = await api.poke({onSuccess, onError, app: 'org', mark:'org-action', json: testEntry}); */
      /* const add = await api.poke({}); */
      /* setApps(charges); */
    }

    init();
  }, []);

  return (
	<main>
		<Calendar events={events} onlickEvent={calendarClick}/>
	</main>
  );
}

    /* <main className="flex items-center justify-center min-h-screen"> */ 
			/* <div className="max-w-md space-y-6 py-20"> */
    /*     <h1 className="text-3xl font-bold">Welcome to organizer</h1> */
    /*     <p>Here&apos;s your urbit&apos;s installed apps:</p> */
    /*     {apps && ( */
    /*       <ul className="space-y-4"> */
    /*         {Object.entries(apps).map(([desk, app]) => ( */
    /*           <li key={desk} className="flex items-center space-x-3 text-sm leading-tight"> */
    /*             <AppTile {...app} /> */
    /*             <div className="flex-1 text-black"> */
    /*               <p> */
    /*                 <strong>{app.title || desk}</strong> */
    /*               </p> */
    /*               {app.info && <p>{app.info}</p>} */
    /*             </div> */
    /*           </li> */
    /*         ))} */
    /*       </ul> */
    /*     )} */
    /*   </div> */
    /* </main> */
