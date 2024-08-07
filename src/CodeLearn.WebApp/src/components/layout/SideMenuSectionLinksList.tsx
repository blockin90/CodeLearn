import { SideMenuLink } from './models/SideMenuLink.ts';

type SideMenuSectionLinksListProps = {
  links: SideMenuLink[];
};

function SideMenuSectionLinksList(props: SideMenuSectionLinksListProps) {
  return (
    <ul className="space-y-1">
      {props.links.map((link) => (
        <li key={link.id} className="flex items-center">
          {link.icon && <span className="mr-2 w-4 min-w-4 pt-0.5 text-zinc-500">{link.icon}</span>}

          <a className="block flex-grow" target="_self" href={link.href}>
            <span className="border-default ring-foreground group-hover:border-foreground-muted group flex max-w-full cursor-pointer space-x-2 truncate py-1 font-normal text-zinc-500 outline-none transition hover:text-zinc-800 hover:underline">
              {link.name}
            </span>
          </a>
        </li>
      ))}
    </ul>
  );
}

export default SideMenuSectionLinksList;
